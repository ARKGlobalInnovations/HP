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
	$(document).scroll(function(){
		var x = $(this).scrollTop();
		if(x > 490){
			$(".dupliateBtn").removeClass("hidden");
		}
		else{
			$(".dupliateBtn").addClass("hidden");
		}
	});
});