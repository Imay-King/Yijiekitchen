/*
 * 主导航图片轮换
 */

window.onload = function() {
	flag = 0;
	obj1 = document.getElementById("slider");
	obj2 = document.getElementById("numb").getElementsByTagName("li");
	obj3 = document.getElementById("other");
	obj2[0].style.backgroundColor = "#666666";
	time = setInterval("turn();", 5000);
	obj1,obj3.onmouseover = function() {
		clearInterval(time);
	}
	obj1,obj3.onmouseout = function() {
		time = setInterval("turn();", 6000);
	}
	for (var num = 0; num < obj2.length; num++) {
		obj2[num].onmouseover = function() {
			turn(this.innerHTML);
			clearInterval(time);
		}
		obj2[num].onmouseout = function() {
			time = setInterval("turn();", 6000);
		}
	}
}

function turn(value) {
	if (value != null) {
		flag = value - 2;
	}
	if (flag < obj2.length - 1) {
		flag++;
	} else {
		flag = 0;
	}
	obj1.style.top = flag * (-520) + "px";
	obj3.style.left = flag * (-95) + "px";
	
	for (var j = 0; j < obj2.length; j++) {
		obj2[j].style.backgroundColor = "#ffffff";
	}
	obj2[flag].style.backgroundColor = "#666666";
}