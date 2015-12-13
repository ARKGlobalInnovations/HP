$(document).ready(function(){
	$(".roomsDropdown").find("li").click(function(){
		$(".roomsDropdown").find("li").removeClass('active');
	});

	$(".list-group-item").click(function(){
            $(".list-group-item").removeClass('active');
            $(this).addClass('active');
    });

	var i = 0;
    var livingRoomItems = [{"item1":"one", "item2":"two", "item3":"three", "item4":"four"}];
    $.each(livingRoomItems, function() {
	  $.each(this, function(name, value) {	++i;
	  	var itemBox = '<div class="col-xs-2 itemsboxes" id="itemsbox'+i+'"><div class="col-xs-12 wtSize"><div class="col-xs-4"><input type="text" class="form-control input-number" placeholder="Qty"></div><div class="col-xs-5"><input type="text" class="form-control" placeholder="Kg"></div><div class="col-xs-3"><i class="fa fa-laptop fa-3x" style="float:right"></i></div></div><div class="clearfix"></div><div class="col-xs-12"><div class="itemName">'+value+'</div></div><div class="clearfix"></div><div class="col-xs-12 wtSize"><div class="col-xs-6"><select class="form-control"><option>Small</option><option>Medium</option><option>Large</option><option>Ex Large</option></select></div><div class="col-xs-6"><div class="checkbox"><label><input type="checkbox"> Delicate</label></div></div></div><div class="clearfix"></div><div class="itemsboxBtns"><button id="btns" type="button" class="col-xs-4 btn btn-danger btn-number"  data-type="minus"><span class="glyphicon glyphicon-minus"></span></button><input type="hidden" name=""><button id="btns" type="button" class="col-xs-4 col-xs-offset-4 btn btn-success pull-right btn-number" data-type="plus" ><span class="glyphicon glyphicon-plus"></span></button></div></div>';
	    $("#livingRoomItems").append(itemBox);
	  });
	});

	var bedRoomItems = [{"item1":"one", "item2":"two", "item3":"three", "item4":"four"},{"item1":"one", "item2":"two", "item3":"three", "item4":"four"},{"item1":"one", "item2":"two", "item3":"three", "item4":"four"}];
    $.each(bedRoomItems, function() {
	  $.each(this, function(name, value) {	++i;
	  	var itemBox = '<div class="col-xs-2 itemsboxes" id="itemsbox'+i+'"><div class="col-xs-12 wtSize"><div class="col-xs-4"><input type="text" class="form-control input-number" placeholder="Qty"></div><div class="col-xs-5"><input type="text" class="form-control" placeholder="Kg"></div><div class="col-xs-3"><i class="fa fa-laptop fa-3x" style="float:right"></i></div></div><div class="clearfix"></div><div class="col-xs-12"><div class="itemName">Item Number '+value+'</div></div><div class="clearfix"></div><div class="col-xs-12 wtSize"><div class="col-xs-6"><select class="form-control"><option>Small</option><option>Medium</option><option>Large</option><option>Ex Large</option></select></div><div class="col-xs-6"><div class="checkbox"><label><input type="checkbox"> Delicate</label></div></div></div><div class="clearfix"></div><div class="itemsboxBtns"><button id="btns" type="button" class="col-xs-4 btn btn-danger btn-number"  data-type="minus"><span class="glyphicon glyphicon-minus"></span></button><input type="hidden" name=""><button id="btns" type="button" class="col-xs-4 col-xs-offset-4 btn btn-success pull-right btn-number" data-type="plus" ><span class="glyphicon glyphicon-plus"></span></button></div></div>';
	  	$("#bedRoomItems").append(itemBox);
	  });
	});

	var kitchenItems = [{"item1":"one", "item2":"two", "item3":"three", "item4":"four"},{"item1":"one", "item2":"two", "item3":"three", "item4":"four"},{"item1":"one", "item2":"two", "item3":"three", "item4":"four"}];
    $.each(kitchenItems, function() {
	  $.each(this, function(name, value) {	++i;
	  	var itemBox = '<div class="col-xs-2 itemsboxes" id="itemsbox'+i+'"><div class="col-xs-12 wtSize"><div class="col-xs-4"><input type="text" class="form-control input-number" placeholder="Qty"></div><div class="col-xs-5"><input type="text" class="form-control" placeholder="Kg"></div><div class="col-xs-3"><i class="fa fa-laptop fa-3x" style="float:right"></i></div></div><div class="clearfix"></div><div class="col-xs-12"><div class="itemName">Item Number '+value+'</div></div><div class="clearfix"></div><div class="col-xs-12 wtSize"><div class="col-xs-6"><select class="form-control"><option>Small</option><option>Medium</option><option>Large</option><option>Ex Large</option></select></div><div class="col-xs-6"><div class="checkbox"><label><input type="checkbox"> Delicate</label></div></div></div><div class="clearfix"></div><div class="itemsboxBtns"><button id="btns" type="button" class="col-xs-4 btn btn-danger btn-number"  data-type="minus"><span class="glyphicon glyphicon-minus"></span></button><input type="hidden" name=""><button id="btns" type="button" class="col-xs-4 col-xs-offset-4 btn btn-success pull-right btn-number" data-type="plus" ><span class="glyphicon glyphicon-plus"></span></button></div></div>';
	  	$("#kitchenItems").append(itemBox);
	  });
	});

	var storeRoomItems = [{"item1":"one", "item2":"two", "item3":"three", "item4":"four"},{"item1":"one", "item2":"two", "item3":"three", "item4":"four"},{"item1":"one", "item2":"two", "item3":"three", "item4":"four"}];
    $.each(storeRoomItems, function() {
	  $.each(this, function(name, value) {	++i;
	  	var itemBox = '<div class="col-xs-2 itemsboxes" id="itemsbox'+i+'"><div class="col-xs-12 wtSize"><div class="col-xs-4"><input type="text" class="form-control input-number" placeholder="Qty"></div><div class="col-xs-5"><input type="text" class="form-control" placeholder="Kg"></div><div class="col-xs-3"><i class="fa fa-laptop fa-3x" style="float:right"></i></div></div><div class="clearfix"></div><div class="col-xs-12"><div class="itemName">Item Number '+value+'</div></div><div class="clearfix"></div><div class="col-xs-12 wtSize"><div class="col-xs-6"><select class="form-control"><option>Small</option><option>Medium</option><option>Large</option><option>Ex Large</option></select></div><div class="col-xs-6"><div class="checkbox"><label><input type="checkbox"> Delicate</label></div></div></div><div class="clearfix"></div><div class="itemsboxBtns"><button id="btns" type="button" class="col-xs-4 btn btn-danger btn-number"  data-type="minus"><span class="glyphicon glyphicon-minus"></span></button><input type="hidden" name=""><button id="btns" type="button" class="col-xs-4 col-xs-offset-4 btn btn-success pull-right btn-number" data-type="plus" ><span class="glyphicon glyphicon-plus"></span></button></div></div>';
	  	$("#storeRoomItems").append(itemBox);
	  });
	});

	var vehicleItems = [{"item1":"one", "item2":"two", "item3":"three", "item4":"four"},{"item1":"one", "item2":"two", "item3":"three", "item4":"four"},{"item1":"one", "item2":"two", "item3":"three", "item4":"four"}];
    $.each(vehicleItems, function() {
	  $.each(this, function(name, value) {	++i;
	  	var itemBox = '<div class="col-xs-2 itemsboxes" id="itemsbox'+i+'"><div class="col-xs-12 wtSize"><div class="col-xs-4"><input type="text" class="form-control input-number" placeholder="Qty"></div><div class="col-xs-5"><input type="text" class="form-control" placeholder="Kg"></div><div class="col-xs-3"><i class="fa fa-laptop fa-3x" style="float:right"></i></div></div><div class="clearfix"></div><div class="col-xs-12"><div class="itemName">Item Number '+value+'</div></div><div class="clearfix"></div><div class="col-xs-12 wtSize"><div class="col-xs-6"><select class="form-control"><option>Small</option><option>Medium</option><option>Large</option><option>Ex Large</option></select></div><div class="col-xs-6"><div class="checkbox"><label><input type="checkbox"> Delicate</label></div></div></div><div class="clearfix"></div><div class="itemsboxBtns"><button id="btns" type="button" class="col-xs-4 btn btn-danger btn-number"  data-type="minus"><span class="glyphicon glyphicon-minus"></span></button><input type="hidden" name=""><button id="btns" type="button" class="col-xs-4 col-xs-offset-4 btn btn-success pull-right btn-number" data-type="plus" ><span class="glyphicon glyphicon-plus"></span></button></div></div>';
	  	$("#vehicleItems").append(itemBox);
	  });
	});

});
