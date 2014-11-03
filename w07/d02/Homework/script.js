

function addToList(item){
		var total_list_items=document.querySelectorAll('li').length
    var list=document.getElementById('list');
    var new_item=document.createElement('li');
    
    new_item.id='li'+(total_list_items+1);
    new_item.className="list_item";
 		list.insertBefore(new_item, list.children[0])

 		var label=document.createElement('label');
 		label.innerText=item;
 		label.id="label"+(total_list_items+1);
 		new_item.appendChild(label);

 		label.addEventListener('click', function(event){
 			event.target.innerHTML="<input type='text' value='"+label.innerText+"' id='editform"+(total_list_items+1)+"'>";
 			 	});

 			label.addEventListener('keypress', function(event){

 				if(event.keyCode=== 13){
 				label.innerText=event.target.value
 			
 				}
 			});
 		


	
	


    var total_checks=document.getElementsByClassName('checkbox').length
    var checkbox = document.createElement('input');
		checkbox.type = "checkbox";
		checkbox.id = "check"+(total_checks+1);
		checkbox.className="checkbox";
		new_item.appendChild(checkbox)
		checkbox.addEventListener('click', function(event){
			if(event.target.checked == true)
			{
		checkbox.parentNode.style.setProperty("text-decoration", "line-through");
			}
			else{

				checkbox.parentNode.style.setProperty("text-decoration", "none");

			}
			
			var count=0;;
			for(var i=0; i < checks.length; i++){
				if(checks[i].checked==false){
					count +=1;
				}
			}
			var completed=document.getElementById('tasks')
			completed.innerText="Tasks Remaining:"+count;
	})

		 var moveup = document.createElement('input');
			moveup.type = "button";
			moveup.id = "moveup"+(total_checks+1);
			moveup.value="Move Item Up"
			moveup.className="moveup";
			new_item.appendChild(moveup)

			moveup.addEventListener('click', function(event){
				var previous=event.target.parentNode.previousSibling;
				var parent=document.getElementById('list');
				parent.insertBefore(event.target.parentNode, previous);
				})

			var movedown = document.createElement('input');
			movedown.type = "button";
			movedown.id = "movedown"+(total_checks+1);
			movedown.value="Move Item Down"
			movedown.className="movedown";
			new_item.appendChild(movedown)

			movedown.addEventListener('click', function(event){
				var parent=document.getElementById('list');
				var next=event.target.parentNode.nextSibling.nextSibling
				parent.insertBefore(event.target.parentNode, next)
			});



		var checks=document.getElementsByClassName('checkbox');
			var count=0;;
			for(var i=0; i < checks.length; i++){
				if(checks[i].checked==false){
					count +=1;
				}
			}
			var completed=document.getElementById('tasks')
			completed.innerText="Tasks Remaining:"+count;

}
	var input=document.getElementById('item');
	input.addEventListener('keypress', function(event){
		if(event.keyCode=== 13){
		 var item=document.getElementById('item');
      var value=item.value;
      addToList(value);
      item.value='';
    }
    });




