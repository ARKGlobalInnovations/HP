$(document).ready(function(){
    $('#datetimepicker').datetimepicker({
            format:'d/m/Y H:i',
            minDate:'-1970/01/01',
            mask:'19/39/9999 29:59'
        });

	$(".roomsDropdown").find("li").click(function(){
		$(".roomsDropdown").find("li").removeClass('active');
	});


    var progressArr = [15,15,15,10,10,10,5,5,5,15];
	$(".list-group-item").click(function(){
            $(".list-group-item").removeClass('active');
            $(this).addClass('active');
            
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

    $(".tab-content, .othersData").on('keyup','.Kilograms', function(){
        kilos = 0;
          $( ".Kilograms" ).each(function( index, element ) {
                if($(this).val() != "" && $(this).val() != 0){
                       kilos  = kilos + parseInt($(this).val());
                }
          });
          $(".totalkgs").val(kilos).trigger('click');

    });
    $(".navbtns").click(function(){
        $(".list-group").find(".list-group-item").removeClass("active");
        var tab = $(this).data("roomtype");
        $(".list-group").find('.'+tab).addClass("active");
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
                        var itemBox = '<div class="col-xs-2 itemsboxes" id="'+value.itemId+'"><div class="col-xs-12 wtSize"><div class="col-xs-4"><input type="text" class="form-control quantity" name="itemsquantity[]" placeholder="Qty" value=""></div><div class="col-xs-5"><input type="hidden" class="form-control" name="" placeholder="aKg" value="'+value.weight+'"><input type="text" class="form-control Kilograms" name="itemweight[]" placeholder="Kg" value=""></div><div class="col-xs-3"><img src="./icon/'+value.roomName+'/png black/'+value.icons+'"  style="float:right"></img></div></div><div class="clearfix"></div><div class="boxOfItemName"><div class="itemName">'+value.itemName+'</div></div><div class="clearfix"></div><div class="col-xs-12 wtSize2"><div class="col-xs-6"><select class="form-control" name="itemsize[]" ><option>Small</option><option>Medium</option><option>Large</option><option>Ex Large</option></select></div><div class="col-xs-6"><div class="checkbox"><label><input type="checkbox" name="delicate[]" value="'+value.itemId+'" > Delicate</label></div></div></div><div class="clearfix"></div><div class="itemsboxBtns"><button type="button" class="col-xs-4 btn btn-default btn-Minus"  data-type="minus"><span class="glyphicon glyphicon-minus"></span></button><input type="hidden" name="itemid[]" value="'+value.itemId+'"><button type="button" class="col-xs-4 col-xs-offset-4 btn btn-default pull-right btn-Plus" data-type="plus" ><span class="glyphicon glyphicon-plus"></span></button></div></div>';
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
var qty = $(this).closest(".itemsboxes").find("[placeholder='Qty']").val();

        //var wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
        //wt =12;
       // alert(wt);
        
        //var awt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
        $(this).closest(".itemsboxes").find("[placeholder='Qty']").val(++qty);
        if(qty==1)
        {
           var wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
            $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt*qty);
        }
        else if (qty==2)
        {
            wt = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
            $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt*qty);
        }else{
            wt = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
            var count = qty;
            $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt/--count);
            var wt1 = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
            $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt1*qty);
        }

        $(this).closest(".itemsboxes").find(".quantity").trigger('click');

        $(this).closest(".itemsboxes").find(".Kilograms").trigger('click');
    });

    $(".tab-content").on('click','.btn-Minus',function(){
    	var qty = $(this).closest(".itemsboxes").find("[placeholder='Qty']").val();
        var wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
        //var wt = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
    	$(this).closest(".itemsboxes").find("[placeholder='Qty']").val(--qty);
        if(qty==1)
        {
            if(wt==""){
                wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
            }
            else{
                wt = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
                $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt/2);
                wt = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
            }
            $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt*qty);
        }
        else {
            wt = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
            var count = qty;
            $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt/++count);
            var wt1 = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
            $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt1*qty);
        }
        //$(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt*qty);
        $(this).closest(".itemsboxes").find(".Kilograms").trigger('click');
    	if(qty<=0){
    		$(this).closest(".itemsboxes").find("[placeholder='Qty']").val("");
            $(this).closest(".itemsboxes").find(".quantity").trigger('click');
            $(this).closest(".itemsboxes").find("[placeholder='Kg']").val("");
            $(this).closest(".itemsboxes").find(".Kilograms").trigger('click');
        }


    });
	
	   $(".tab-content").on('focus','.quantity', function(){
        qtyfocus = $(this).closest(".itemsboxes").find("[placeholder='Qty']").val();
    });
	
	$(".tab-content").on('change','.quantity', function(){
        var qty = $(this).closest(".itemsboxes").find("[placeholder='Qty']").val();
        var wt = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
        if(qty > 0){
            $(this).closest(".itemsboxes").addClass('filledClass');
            if(wt!=""  && wt!=NaN){
                wt = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
                $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt/qtyfocus);
                wt1 = $(this).closest(".itemsboxes").find("[placeholder='Kg']").val();
                $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt1*qty);
            }else{
                wt = $(this).closest(".itemsboxes").find("[placeholder='aKg']").val();
                $(this).closest(".itemsboxes").find("[placeholder='Kg']").val(wt*qty);
            }

        }else{
            $(this).closest(".itemsboxes").removeClass('filledClass');
            if(qty<=0){
                $(this).closest(".itemsboxes").find("[placeholder='Qty']").val("");
                $(this).closest(".itemsboxes").find(".quantity").trigger('click');
                $(this).closest(".itemsboxes").find("[placeholder='Kg']").val("");
                $(this).closest(".itemsboxes").find(".Kilograms").trigger('click');
            }
        }
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
