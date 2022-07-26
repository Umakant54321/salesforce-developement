({
	  add : function(component, event, helper) {
        var num1 = component.get('v.input1');
        var num2 = component.get('v.input2');
		//alert(parseInt(num1)+parseInt(num2));
		component.set('v.output',parseInt(num1)+parseInt(num2));
	},
    sub : function(component, event, helper) {
        var num1 = component.get('v.input1');
        var num2 = component.get('v.input2');
		//alert(parseInt(num1)-parseInt(num2));
        component.set('v.output',parseInt(num1)-parseInt(num2));
	},
   mult : function(component, event, helper) {
        var num1 = component.get('v.input1');
        var num2 = component.get('v.input2');
		//alert(parseInt(num1)*parseInt(num2));
		component.set('v.output',parseInt(num1)*parseInt(num2));
	},
  div : function(component, event, helper) {
        var num1 = component.get('v.input1');
        var num2 = component.get('v.input2');
		//alert(parseInt(num1)/parseInt(num2));
		component.set('v.output',parseInt(num1)/parseInt(num2));
	}
})