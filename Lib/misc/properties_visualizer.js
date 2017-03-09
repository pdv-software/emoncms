function PropertiesVisualizer(){
  this.numberValidatorListeners = [];
  this.rangeValidatorListeners = [];
}

PropertiesVisualizer.prototype.visualize = function (properties, container, initialValues){
				   var inputs = [];
                   for(var index in properties){
	                	
						var prop = properties[index];						
	                	var label = $('<label></label>');
						label.attr('for', prop.name);
						label.html(prop.name);
	                	var input;
	                	switch(prop.inputType){
	                		case 'free':
	                		  input = $('<input type="text"></input>');
							  if(initialValues.hasOwnProperty(prop.name)){
								input.val(initialValues[prop.name])  
							  }else{
	                		    if(prop.defaultValue){
	                			  input.val(prop.defaultValue);
	                		    }
							  }
							  if(prop.dataType == 'number'){
	                		    input.on("focusout", function(e){
								  var val = $(this).val();
	                			  if(!$.isNumeric(val)){
	                				  for(var l in this.numberValidatorListeners){
										  l(this, val);
									  }
	                			  }  
	                		    });
							  }
	                		  break;
	                		case 'range':
	                		  input = $('<input type="text"></input>');
	                		  if(initialValues.hasOwnProperty(prop.name)){
								input.val(initialValues[prop.name])  
							  }else{
	                		    if(prop.defaultValue){
	                			  input.val(prop.defaultValue);
	                		    }
							  }
							  if(prop.rangeMin && prop.rangeMax){
								label.html(prop.name + " (" + prop.rangeMin + "-" + prop.rangeMax + ")");  
							  }else if(prop.rangeMin){
								label.html(prop.name + " ( min. " + prop.rangeMin + ")");  
							  }else if(prop.rangeMax){
								label.html(prop.name + " ( max. " + prop.rangeMax + ")");   
							  }
	                		  input.on("focusout", function(e){
	                			var val = $(this).val();
	                			if(!$.isNumeric(val)){
	                				for(var l in this.numberValidatorListeners){
										l(this, val);
									}
	                			} else{
									var floatVal = parseFloat(val);
	                				if(prop.rangeMin && floatVal < prop.rangeMin){
	                				  for(var l in this.rangeValidatorListeners){
										l(this, floatVal, true, prop.rangeMin);
									  }	
	                				} else if(prop.rangeMax && floatVal > prop.rangeMax){
	                				  for(var l in this.rangeValidatorListeners){
										l(this, floatVal, false, prop.rangeMax);
									  }		
	                				}
	                			} 
	                		  });
	                		  break;
	                		case 'selection':
							  input = $('<select></select>');
							  var val = null;
							  if(initialValues.hasOwnProperty(prop.name)){
								val = initialValues[prop.name]; 
							  }else{
	                		    if(prop.defaultValue){
	                			  val = prop.defaultValue;
	                		    }
							  }
							  $.each(prop.values, function(key, value){
								  var option = $("<option></option>").attr("value", value.value).text(value.display);
								  if(val === value.value){
									  option.attr("selected", "selected");
								  }
								  input.append(option);
							  });
	                		  break;
	                	}
						input.attr('id', prop.name);
						if(prop.description){
							input.attr('title', prop.description);
						}
						label.appendTo(container);
	                	input.appendTo(container);
						inputs.push(input);
	                	$("<br><br>").appendTo(container);
	                }
					return inputs;
                };
				
PropertiesVisualizer.prototype.addNumberValidatorListener = function(listener){
					if(typeof listener === "function"){
						this.numberValidatorListeners.push(listeners);
					}
				};

PropertiesVisualizer.prototype.addRangeValidatorListener = function(listener){
					if(typeof listener === "function"){
						this.rangeValidatorListeners.push(listeners);
					}
				};					