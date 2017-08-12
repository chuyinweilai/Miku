var data=[
	{
		name:'aa'
	},
	{
		name:'bb'
	}
]

addList();

function addList(){
	var html="";
	for (var i = 0; i< data.length;i++){
		html =
		'<li>'+
		'<div>'+
		data[i].name+
		'</div>'+
		'<button data-num="' + i + '" onclick="del(this)">Del</button>'+
		'</li>'

		$("#aLists").append(html);
	}
}

function del(obj){
	console.log($(obj).attr('data-num'))
}