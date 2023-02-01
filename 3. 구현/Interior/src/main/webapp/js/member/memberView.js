function fn_memberEdit(memberId){
	console.log("memberId:"+ memberId);
	
	console.log("location.href : " , location.href);		// http://localhost:8080/nextit/member/memberView?memId=nextit30
	console.log("location.host : " , location.host);		// localhost:8080
	
	let hostIndex = location.href.indexOf(location.host) + location.host.length;
	console.log("hostIndex : " , hostIndex);
	
	let contextPath = location.href.substring(hostIndex, location.href.indexOf('/', hostIndex + 1));
	console.log("contextPath : ", contextPath);
	
	location.href = "/member/memberEdit?memberId="+memberId; //절대경로로
}

function fn_memberDeleteSubmit(){
	console.log("fn_memberDeleteSubmit");
	let ret = confirm("탈퇴를 진행하시겠습니까?");
	if(ret){
		let f = document.deleteForm;
		console.log("f : ", f);
		f.submit();
	}else{
		$("#modal_div1").fadeOut();	
	}
}
function fn_Cancel(){
	$("#modal_div1").fadeOut();
}