({
	doInit : function(c,e,h) {
        var action = c.get('c.getAccountDetails');
        var field = c.get('v.fields');
        action.setParams({fields: field});
        action.setCallback(this,function(res){
            c.set('v.Acc',res.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})