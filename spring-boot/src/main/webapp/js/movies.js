function FormDataToJSON(FormElement){    
    var formData = new FormData(FormElement);
    var ConvertedJSON= {};
    for (const [key, value]  of formData.entries())
    {
        ConvertedJSON[key] = value;
    }
    return ConvertedJSON
}
function addMovie(){
	console.log("#)#)#(cool!");
	//you have to read all the form data and convert into JSON
	var jsonData=JSON.stringify($('#addMovieForm').serializeJSON());
	console.log(jsonData);
}
function openAddMovieModal(){
	//write code to open modal
	// id of modal = addMovieModal
	$("#addMovieModal").modal("show");
}

function loadDataAgain(){
	  var psearchString=document.movieform.searchString.value;
	  if(psearchString.length==0){
		  	loadData();
		}
  }

  function searchMovies(){
	  var psearchString=document.movieform.searchString.value;
	  loadData(psearchString);
	}
  
  	function loadData(psearchString ="") {

		/* window.fetch("http://localhost:444/javascript/movies").
		then(res=>res.json()).
		then(res=>res.map(user=>user.title)).
		then(titles=>console.log(titles)); */
		
		//I want to make an AJAX Call to the server to fetch data
		//fetch method will return an object of Promise
		var  prepareRequest;
		if(psearchString.length==0){
			  prepareRequest=window.fetch("http://localhost:444/javascript/movies");
		}else{
			   prepareRequest=window.fetch("http://localhost:444/javascript/movies?searchString="+psearchString);
		}
		prepareRequest.then(function(response){ //server connection established , request received 
					return response.json(); //Promise  //processing request 
		}).then(function(data){ //json is coverted now into JavaScipt Object
					console.log(data);
					document.getElementById("totalRecord").innerHTML=data.length;
					if(data.length==0){
							document.getElementById("movieNameError").innerHTML="Sorry no record exist for this search criteria = "+psearchString;
							return;
					}
					var dcontent="";
					data.forEach((item) => {
						dcontent=dcontent+'<tr>';
						dcontent=dcontent+'<td>'+item.title+'</td>';
						dcontent=dcontent+'<td>'+item.director+'</td>';
						dcontent=dcontent+'<td>'+item.language+'</td>';
						dcontent=dcontent+'<td>'+item.year+'</td>';
						dcontent=dcontent+'<td>'+item.story+'</td>';
						dcontent=dcontent+'<td><img src="'+item.poster+'" style="height:50px;"> </td>';
						dcontent=dcontent+'<td><img src="img/delete.png" style="height:40px;"><img src="img/edit.png" style="height:40px;"></td>';
						dcontent=dcontent+'</tr>';
					});
					document.getElementById("tableContent").innerHTML=dcontent;
			});
   }