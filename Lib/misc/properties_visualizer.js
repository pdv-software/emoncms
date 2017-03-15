function PropertiesVisualizer(){
  this.numberValidatorListeners = [];
  this.rangeValidatorListeners = [];
}
PropertiesVisualizer.prototype.BELOW_RANGE_MIN = 0;
PropertiesVisualizer.prototype.ABOVE_RANGE_MAX = 1;
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
	                		    if(typeof prop.defaultValue !== "undefined"){
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
	                		    if(typeof prop.defaultValue !== "undefined"){
	                		      input.val(prop.defaultValue);
	                		    }
					  }
					  if( (typeof prop.rangeMin === "number") && (typeof prop.rangeMax === "number") ){
					    label.html(prop.name + " (" + prop.rangeMin + "-" + prop.rangeMax + ")");  
					  }else if(typeof prop.rangeMin === "number"){
					    label.html(prop.name + " ( min. " + prop.rangeMin + ")");  
					  }else if(typeof prop.rangeMax === "number"){
					    label.html(prop.name + " ( max. " + prop.rangeMax + ")");   
					  }
                                          var pv = this;
	                		  input.on("focusout", function(e){
	                			var val = $(this).val();
	                			if(!$.isNumeric(val)){
                                                    for(var l in this.numberValidatorListeners){
                                                        l(this, val);
                                                    }
	                			} else{
                                                    var floatVal = parseFloat(val);
                                                    if((typeof prop.rangeMin === "number") && (floatVal < prop.rangeMin)){
                                                        for(var l in pv.rangeValidatorListeners){
                                                            l(this, floatVal, pv.BELOW_RANGE_MIN, prop.rangeMin);
                                                        }	
                                                    } else if((typeof prop.rangeMax === "number") && (floatVal > prop.rangeMax)){
	                				for(var l in pv.rangeValidatorListeners){
                                                            l(this, floatVal, pv.BELOW_RANGE_MIN, prop.rangeMax);
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
                                                if(typeof prop.defaultValue !== "undefined"){
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