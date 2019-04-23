function genTodayStr(){
	var date = new Date();
	var month=(date.getMonth()+1)<10?"0"+(date.getMonth()+1):(date.getMonth()+1);
	return date.getFullYear()+"-"+formatZero(month)+"-"+formatZero(date.getDate());
}

function genLastYearStr(){
	var date = new Date();
	date.setFullYear(date.getFullYear()-1);
	return date.getFullYear()+"-"+formatZero(date.getMonth()+1)+"-"+formatZero(date.getDate());
}

function genLastMonthDayStr(){
	var date = new Date();
	var month=(date.getMonth()+1-1)<10?"0"+(date.getMonth()+1-1):(date.getMonth()+1-1);
	return date.getFullYear()+"-"+formatZero(month)+"-"+formatZero(date.getDate());
}

function genLastWeekDayStr(){
	var date = new Date();
	date.setDate(date.getDate()-6);
	return date.getFullYear()+"-"+formatZero(date.getMonth()+1)+"-"+formatZero(date.getDate());
}

function formatZero(n){
	if(n<10){
		return "0"+n;
	}else{
		return n;
	}
}
//处理页面时间截问题
function add0(m){return m<10?'0'+m:m }
function formatDate(timestamp) {
	//timestamp是整数，否则要parseInt转换
	var time = new Date(timestamp);
	var y = time.getFullYear();
	var m = time.getMonth()+1;
	var d = time.getDate();
	var h = time.getHours();
	var mm = time.getMinutes();
	var s = time.getSeconds();
	return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
}