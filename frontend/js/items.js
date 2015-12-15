$(document).ready(function(){
	$(".roomsDropdown").find("li").click(function(){
		$(".roomsDropdown").find("li").removeClass('active');
	});

	$(".list-group-item").click(function(){
            $(".list-group-item").removeClass('active');
            $(this).addClass('active');
    });

	
    var livingRoomItems = [{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"checked", "id":"104"}, {"itemName":"Cooler", "Qty":"", "Kg":"", "Size":"small", "Delicate":"", "id":"103"},{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"checked", "id":"101"}, {"itemName":"Cooler", "Qty":"", "Kg":"", "Size":"small", "Delicate":"", "id":"102"}];
    var bedRoomItems = [{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"true", "id":"101"}, {"itemName":"Cooler", "Qty":"0", "Kg":"0", "Size":"small", "Delicate":"true", "id":"102"}];
	var kitchenItems = [{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"true", "id":"101"}, {"itemName":"Cooler", "Qty":"0", "Kg":"0", "Size":"small", "Delicate":"true", "id":"102"}];
	var storeRoomItems = [{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"true", "id":"101"}, {"itemName":"Cooler", "Qty":"0", "Kg":"0", "Size":"small", "Delicate":"true", "id":"102"}];
	var poojaRoomItems = [{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"true", "id":"101"}, {"itemName":"Cooler", "Qty":"0", "Kg":"0", "Size":"small", "Delicate":"true", "id":"102"}];
	var gymItems = [{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"true", "id":"101"}, {"itemName":"Cooler", "Qty":"0", "Kg":"0", "Size":"small", "Delicate":"true", "id":"102"}];
	var vehicleItems = [{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"true", "id":"101"}, {"itemName":"Cooler", "Qty":"0", "Kg":"0", "Size":"small", "Delicate":"true", "id":"102"}];
	var otherItems = [{"itemName":"TV", "Qty":"", "Kg":"", "Size":"small", "Delicate":"true", "id":"101"}, {"itemName":"Cooler", "Qty":"0", "Kg":"0", "Size":"small", "Delicate":"true", "id":"102"}];
    function ItemsBoxes(data, container){
    	$.each(data, function(index,value) {
		  	var itemBox = '<div class="col-xs-2 itemsboxes" id="'+value.id+'"><div class="col-xs-12 wtSize"><div class="col-xs-4"><input type="text" class="form-control input-number" placeholder="Qty" value="'+value.Qty+'"></div><div class="col-xs-5"><input type="text" class="form-control" placeholder="Kg" value="'+value.Kg+'"></div><div class="col-xs-3"><i class="fa fa-laptop fa-3x" style="float:right"></i></div></div><div class="clearfix"></div><div class="col-xs-12"><div class="itemName">'+value.itemName+'</div></div><div class="clearfix"></div><div class="col-xs-12 wtSize"><div class="col-xs-6"><select class="form-control"><option>Small</option><option>Medium</option><option>Large</option><option>Ex Large</option></select></div><div class="col-xs-6"><div class="checkbox"><label><input type="checkbox" '+value.Delicate+'> Delicate</label></div></div></div><div class="clearfix"></div><div class="itemsboxBtns"><button type="button" class="col-xs-4 btn btn-default btn-Minus"  data-type="minus"><span class="glyphicon glyphicon-minus"></span></button><input type="hidden" name=""><button type="button" class="col-xs-4 col-xs-offset-4 btn btn-default pull-right btn-Plus" data-type="plus" ><span class="glyphicon glyphicon-plus"></span></button></div></div>';
		    $("#"+container).append(itemBox);
		});
    }
    ItemsBoxes(livingRoomItems,'livingRoomItems');
    ItemsBoxes(bedRoomItems,'bedRoomItems');
    ItemsBoxes(kitchenItems,'kitchenItems');
    ItemsBoxes(storeRoomItems,'storeRoomItems');
    ItemsBoxes(poojaRoomItems,'poojaRoomItems');
    ItemsBoxes(gymItems,'gymItems');
    ItemsBoxes(vehicleItems,'vehicleItems');
    ItemsBoxes(otherItems,'otherItems');

    $(".tab-content").on('click','.btn-Plus',function(){
    	var qty = $(this).closest(".itemsboxes").find("[placeholder='Qty']").val();
    	$(this).closest(".itemsboxes").find("[placeholder='Qty']").val(++qty);
    });
    $(".tab-content").on('click','.btn-Minus',function(){
    	var qty = $(this).closest(".itemsboxes").find("[placeholder='Qty']").val();
    	$(this).closest(".itemsboxes").find("[placeholder='Qty']").val(--qty);
    	if(qty<=0)
    		$(this).closest(".itemsboxes").find("[placeholder='Qty']").val("");
    });
});
