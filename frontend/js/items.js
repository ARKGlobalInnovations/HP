$(document).ready(function(){
    $('#datetimepicker').datetimepicker({
            format:'d/m/Y H:i',
            minDate:'-1970/01/01',
            mask:'19/39/9999 29:59'
        });

	$(".roomsDropdown").find("li").click(function(){
		$(".roomsDropdown").find("li").removeClass('active');
	});

    var progressArr = [{'count':'one','width':15},{'count':'two','width':15},{'count':'three','width':15},{'count':'four','width':10},{'count':'five','width':10},{'count':'six','width':10},{'count':'seven','width':5},{'count':'eight','width':5},{'count':'nine','width':5},{'count':'ten','width':10}];
    
    function progressBar(tabno){
        var pbCount=0;
        jQuery.each(progressArr, function(index,value){
            if(value.count ==  tabno){
                pbCount = value.width;
                console.log(pbCount);
            }
        });

        for(var i=0; i<5; i++){
            var x = progressArr[i].width;
            j=i+1;
            $(".progress > div:nth-child("+j+")").css('width',x+"%");
        }
    }
    progressBar('six');

	$(".list-group-item").click(function(){
            $(".list-group-item").removeClass('active');
            $(this).addClass('active');
            $(document).scrollTop(0);
            var roomtype = $(this).data('roomtype');
            console.log(roomtype);
    });

    $(".othersData").on('click','.addOtherrow',function(){
        var newRow ='<tr><td><input type="text" class="form-control" name="oitemname[]" placeholder="Item Name"></td><td><input type="text" name="oitemqty[]" class="form-control" placeholder="Qty"></td><td><input type="text" name="oitemweight[]" class="form-control Kilograms" placeholder="Weight"></td><td><select class="form-control itemothers-select" name="oitemdelicate[]"> <option value=="0" checked>No</option> <option value="1">Yes</option> </select></td><td><select class="form-control" name="oitemtype[]"><option>Iron</option><option>Glass</option><option>Wood</option><option>Plastic</option></select></td><td><select class="form-control" name="oitemsize[]"><option>small</option><option>large</option><option>Ex large</option><option>medium</option></select></td><td><input type="button" class="btn btn-danger removeOtherrow" value="X"></td></tr>';
        $(".othersData").find("tbody").append(newRow);
    });

    $(".othersData").on('click','.removeOtherrow',function(){
        $trCount = $(this).closest("table").find("tr").length;
        console.log($trCount);
        if($trCount == 2){
           $(this).closest("tr").find("input[type='text']").val("");
        }else{
            $(this).closest("tr").remove();    
        }
    });

    $(".navbtns").click(function(){
        $(".list-group").find(".list-group-item").removeClass("active");
        var tab = $(this).data("roomtype");
        $(".list-group").find('.'+tab).addClass("active");
        $(document).scrollTop(0);
    });

    $(".totalkgs").click(function(){
        var totalweight = $(this).val();
        if(totalweight > 1000){
            $("#vechileImg").attr('src','img/Eicher.png');
          }
          else{
            $("#vechileImg").attr('src','img/miniVehicle.jpg');
          }
    });

    $('.tab-content').on('keypress','input',function(e){
     var key = e.which;
     if(key == 13)  // the enter key code
      {
        $(this).blur();
        $(this).closest('.tab-content').find('.Kilograms').trigger('click');
        return false;  
      }
    });
    


    $.ajax
    ({
            url: 'http://localhost/hp/frontend/itemslist.php',
            dataType: 'json',
            type: 'get',
            contentType: 'application/x-www-form-urlencoded',
            data: '',
            success: function( data, textStatus, jQxhr )
            {
                var livingRoomItems = data.livingroom;
                var bedRoomItems = data.bedroom;
                var kitchenItems = data.kitchen;
				var officeRoomItems = data.officeroom;
                var storeRoomItems = data.storeroom;
                var poojaRoomItems = data.poojaroom;
                var gymItems = data.gym;
                var vehicleItems = data.vehicles;
                function ItemsBoxes(data, container){
                    $.each(data, function(index,value) {
                        var itemBox = '<div class="col-xs-2 itemsboxes" id="'+value.itemId+'"><div class="col-xs-12 wtSize"><div class="col-xs-4"><input type="text" class="form-control quantity" name="itemsquantity[]" placeholder="Qty" value=""></div><div class="col-xs-5"><input type="hidden" class="form-control" name="" placeholder="aKg" value="'+value.weight+'"><input type="text" class="form-control Kilograms" disabled name="itemweight[]" placeholder="Kg" value=""></div><div class="col-xs-3"><img src="./icon/'+value.roomName+'/png black/'+value.icons+'"  style="float:right"></img></div></div><div class="clearfix"></div><div class="boxOfItemName"><div class="itemName">'+value.itemName+'</div></div><div class="clearfix"></div><div class="col-xs-12 wtSize2"><div class="col-xs-6"><select class="form-control" disabled name="itemsize[]" ><option>Small</option><option>Medium</option><option>Large</option><option>Ex Large</option></select></div><div class="col-xs-6"><div class="checkbox" disabled><label><input class="delicatecheckbox" type="checkbox" disabled name="delicate[]" value="'+value.itemId+'" > Delicate</label></div></div></div><div class="clearfix"></div><div class="itemsboxBtns"><button type="button" class="col-xs-4 btn btn-default btn-Minus"  data-type="minus"><span class="glyphicon glyphicon-minus"></span></button><input type="hidden" name="itemid[]" value="'+value.itemId+'"><button type="button" class="col-xs-4 col-xs-offset-4 btn btn-default pull-right btn-Plus" data-type="plus" ><span class="glyphicon glyphicon-plus"></span></button></div></div>';
                        $("#"+container).append(itemBox);
                    });
                }
                ItemsBoxes(livingRoomItems,'livingRoomItems');
                ItemsBoxes(bedRoomItems,'bedRoomItems');
                ItemsBoxes(kitchenItems,'kitchenItems');
				ItemsBoxes(officeRoomItems,'officeRoomItems');
                ItemsBoxes(storeRoomItems,'storeRoomItems');
                ItemsBoxes(poojaRoomItems,'poojaRoomItems');
                ItemsBoxes(gymItems,'gymItems');
                ItemsBoxes(vehicleItems,'vehicleItems');

            },
            error: function( jqXhr, textStatus, errorThrown )
            {
              console.log( errorThrown );
            }
    });

    $(".tab-content").on('click','.btn-Plus',function(){
        var qty = $(this).closest(".itemsboxes").find(".quantity").val();
        $(this).closest(".itemsboxes").find(".quantity").val(++qty);
        if(qty==1)
        {
           var wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
            $(this).closest(".itemsboxes").find(".Kilograms").val(wt*qty);
            $(this).closest(".itemsboxes").find(".quantity, .Kilograms, select, .delicatecheckbox, .checkbox").prop('disabled', false);
        }
        else if (qty==2)
        {
            wt = $(this).closest(".itemsboxes").find(".Kilograms").val();
            $(this).closest(".itemsboxes").find(".Kilograms").val(wt*qty);
            $(this).closest(".itemsboxes").find(".Kilograms").prop('disabled', true);
        }
        else{
            wt = $(this).closest(".itemsboxes").find(".Kilograms").val();
            var count = qty;
            $(this).closest(".itemsboxes").find(".Kilograms").val(wt/--count);
            var wt1 = $(this).closest(".itemsboxes").find(".Kilograms").val();
            $(this).closest(".itemsboxes").find(".Kilograms").val(wt1*qty);
            $(this).closest(".itemsboxes").find(".Kilograms").prop('disabled', true);
        }
        $(this).closest(".itemsboxes").find(".quantity").trigger('click');
        $(this).closest(".itemsboxes").find(".Kilograms").trigger('change');
        $(this).closest(".itemsboxes").addClass('filledClass');
    });

    $(".tab-content, .othersData").on('change','.Kilograms', function(){
        console.log("Hari");
        kilos = 0;
          $( ".Kilograms" ).each(function( index, element ) {
                if($(this).val() != "" && $(this).val() != 0){
                       kilos  = kilos + parseInt($(this).val());
                }
          });
          $(".totalkgs").val(kilos).trigger('click');
    });

    $(".tab-content").on('click','.btn-Minus',function(){
    	var qty = $(this).closest(".itemsboxes").find(".quantity").val();
        var wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
    	$(this).closest(".itemsboxes").find(".quantity").val(--qty);
        if(qty==1)
        {
            if(wt==""){
                wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
            }
            else{
                wt = $(this).closest(".itemsboxes").find(".Kilograms").val();
                $(this).closest(".itemsboxes").find(".Kilograms").val(wt/2);
                wt = $(this).closest(".itemsboxes").find(".Kilograms").val();
            }
            $(this).closest(".itemsboxes").find(".Kilograms").val(wt*qty);
            $(this).closest(".itemsboxes").find(".quantity, .Kilograms, select, .delicatecheckbox, .checkbox").prop('disabled', false);
        }
        else {
            wt = $(this).closest(".itemsboxes").find(".Kilograms").val();
            var count = qty;
            $(this).closest(".itemsboxes").find(".Kilograms").val(wt/++count);
            var wt1 = $(this).closest(".itemsboxes").find(".Kilograms").val();
            $(this).closest(".itemsboxes").find(".Kilograms").val(wt1*qty);
            $(this).closest(".itemsboxes").find(".Kilograms").prop('disabled', true);
        }
    	if(qty<=0){
    		$(this).closest(".itemsboxes").find(".quantity").val("");
            $(this).closest(".itemsboxes").find(".quantity").trigger('click');
            $(this).closest(".itemsboxes").find('.Kilograms').val("");
            $(this).closest(".itemsboxes").removeClass('filledClass');
            $(this).closest(".itemsboxes").find(".Kilograms, select, .delicatecheckbox, .checkbox").prop('disabled', true);
        }
        $(this).closest('.tab-content').find('.Kilograms').trigger('change');
    });
	
	$(".tab-content").on('focus','.quantity', function(){
        qtyfocus = $(this).closest(".itemsboxes").find(".quantity").val();
    });
	
	$(".tab-content").on('change','.quantity', function(){
        var qty = $(this).closest(".itemsboxes").find(".quantity").val();
        var wt = $(this).closest(".itemsboxes").find(".Kilograms").val();
        if(qty > 0){
            $(this).closest(".itemsboxes").addClass('filledClass');
            if(wt!=""  && wt!=NaN){
                wt = $(this).closest(".itemsboxes").find(".Kilograms").val();
                $(this).closest(".itemsboxes").find(".Kilograms").val(wt/qtyfocus);
                wt1 = $(this).closest(".itemsboxes").find(".Kilograms").val();
                $(this).closest(".itemsboxes").find(".Kilograms").val(wt1*qty);
            }else{
                wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
                $(this).closest(".itemsboxes").find(".Kilograms").val(wt*qty);
            }
            if(qty>=1){
                $(this).closest(".itemsboxes").find(".Kilograms, select, .delicatecheckbox, .checkbox").prop('disabled', false);
            }
            if(qty==1){
                $(this).closest(".itemsboxes").find(".Kilograms").prop('disabled', true);
            }
            else
            {
                $(this).closest(".itemsboxes").find(".Kilograms").prop('disabled', true);
            }

        }
        else{
            if(qty<=0){
                $(this).closest(".itemsboxes").find(".quantity").val("");
                $(this).closest(".itemsboxes").find(".quantity").trigger('click');
                $(this).closest(".itemsboxes").find(".Kilograms").val("");
                $(this).closest(".itemsboxes").find(".Kilograms").trigger('change');
                $(this).closest(".itemsboxes").removeClass('filledClass');
                $(this).closest(".itemsboxes").find(".Kilograms, select, .delicatecheckbox, .checkbox").prop('disabled', true);
            }
        }

                $(this).closest(".itemsboxes").find(".Kilograms").trigger('change');
    });
	
/*
    $(".tab-content").on('change blur keyup click','.quantity', function(){
        var qty = $(this).closest(".itemsboxes").find("[placeholder='Qty']").val();
        if(qty > 0){
            $(this).closest(".itemsboxes").addClass('filledClass');
        }else{
            $(this).closest(".itemsboxes").removeClass('filledClass');
        }
    });


*/

});
