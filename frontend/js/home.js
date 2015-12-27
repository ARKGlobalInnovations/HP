function showForm1() {
   document.getElementById('form1').style.display = "block";
   document.getElementById('form2').style.display = "none";
}
function closeForm1(){
    document.getElementById('form1').style.display="none";
    document.getElementById('form2').style.display="none";
}
function showForm2() {
   document.getElementById('form2').style.display = "block";
   document.getElementById('form1').style.display = "none";
}
function closeForm2(){
    document.getElementById('form1').style.display="none";	
    document.getElementById('form2').style.display="none";
}

$(document).ready(function(){
	$('#Itemdatetimepicker, #Housedatetimepicker').datetimepicker({
            format:'d/m/Y H:i',
            minDate:'-1970/01/01',
            mask:'19/39/9999 29:59'
        });
	$(document).scroll(function(){
		var x = $(this).scrollTop();
		if(x > 490){
			$(".dupliateBtn").removeClass("hidden");
		}
		else{
			$(".dupliateBtn").addClass("hidden");
		}
	});
	var HomeOrigin = document.getElementById('movingHouseFrom');
	var options = {componentRestrictions: {country: 'in'}};
    var movingHouseFrom = new google.maps.places.Autocomplete(HomeOrigin, options);
    var HomeDestination = document.getElementById('movingHouseTo');
    var movingHouseTo = new google.maps.places.Autocomplete(HomeDestination, options);

    var ItemOrigin = document.getElementById('movingItemFrom');
    var movingItemFrom = new google.maps.places.Autocomplete(ItemOrigin, options);
    var ItemDestination = document.getElementById('movingItemTo');
    var movingItemTo = new google.maps.places.Autocomplete(ItemDestination, options);
    

    $(document).on('click', '.HousecloseBtn, .ItemcloseBtn', function(){
    	$(this).closest('section').hide();
    });
});