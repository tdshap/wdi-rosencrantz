
	var textbox = document.getElementById("toDoItem")
	var ul = document.getElementById("toDoList")

	var total_list = document.createElement("ul")
	total_list.id = "total"
	ul.appendChild(total_list)

	textbox.addEventListener("keypress", function(event){	
		
		if(event.keyCode == 13) {
			var toDo = textbox.value
			var li = document.createElement("li")
			var id = document.querySelectorAll("li")
			li.id = id.length
			li.innerText = toDo
			ul.appendChild(li)
			
			li.addEventListener('click', function(edit){
			 	edit.target.innerHTML="<input type='text' value='"+li.innerText+"'>"
			})
			
			li.addEventListener('keypress', function(enter){
				if(enter.keyCode=== 13){
				li.innerText=enter.target.value
				}
			});



			var check = document.createElement("input")
			check.type="checkbox"
			li.appendChild(check)

			textbox.value = ""
			check.addEventListener("click", checked_box)


			var arrow_up = document.createElement("input")
			arrow_up.type = "button"
			arrow_up.value = "move up"
			li.appendChild(arrow_up)
			arrow_up.addEventListener("click", moveUp)
			
			var arrow_down = document.createElement("input")
			arrow_down.type = "button"
			arrow_down.value = "move down"
			li.appendChild(arrow_down)
			arrow_down.addEventListener("click", moveDown)

			updateToDoList()
		}
	});




	var updateToDoList = function (){
		var check = document.querySelectorAll("input")
		var itemsLeftToDo = check.length - 1
		total_list.innerText = "You have " + itemsLeftToDo/3 + " items left to do"
	}
	

	var checked_box = function(){
		var check = document.querySelectorAll("input")
		var listItem = document.querySelectorAll("li")
		for (i=1; i<check.length; i++){
			if (check[i].checked == true){
				check[i].parentElement.parentElement.removeChild(check[i].parentElement)
				updateToDoList()
			}
		}
	}

	var moveUp = function(){
		var previous=event.target.parentNode.previousSibling
		ul.insertBefore(event.target.parentNode, previous)
	}

	
	var moveDown = function(){
		var next=event.target.parentNode.nextSibling.nextSibling
		ul.insertBefore(event.target.parentNode, next)

	}


	var edit_text = function(id){
 		event.target.innerHTML="<input type='text' value='"+li.innerText+">"
 	};

 	var enter_text = function(id){

}