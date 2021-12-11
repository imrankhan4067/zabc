sap.ui.define([
	"sap/ui/core/mvc/Controller"
], function (Controller) {
	"use strict";

	return Controller.extend("zabfall.zabfall.controller.home", {
		onInit: function () {
		var cModel = this.getOwnerComponent().getModel("ctaskModel");
		this.getView().setModel(cModel,"contextModel");
		},
		
		onCancelRun: function(oEvent){
			var taskModel = this.getOwnerComponent().getModel("ctaskModel");
			var taskId = taskModel.getProperty("/taskId");
			var that = this;
			
			var oPayload = {
				status: "COMPLETED"
			};
			
			$.ajax({
				url: "/zabfallzabfall/bpmworkflowruntime/v1/xsrf-token",
				method: "GET",
				headers: {
					"X-CSRF-Token": "Fetch"
				},
				success: function (result, xhr, data) {
					var token = data.getResponseHeader("X-CSRF-Token");
					if (token === null) return;
					$.ajax({
						url: "/zabfallzabfall/bpmworkflowruntime/v1/task-instances/"+ taskId,
						type: "PATCH",
						data: JSON.stringify(oPayload), // JSON.stringify(workflowStartPayload),
						headers: {
							"X-CSRF-Token": token,
							"Content-Type": "application/json"
						},
						async: false,
						success: function (data) {
						//	MessageBox.success("workflow call successfull");
						that.getOwnerComponent().getComponentData().startupParameters.inboxAPI.updateTask("NA", taskId);
					//	console.log(data);
						},
						Error: function (data) {
						//	MessageBox.error("workflow call failed");
					//	console.log(data);
						}
					});
				}
			});
		},
		onReporcess: function(oEvent){
			var taskModel = this.getOwnerComponent().getModel("ctaskModel");
			var taskId = taskModel.getProperty("/taskId");
			var that = this;
			
			
			
		
			
			
			var oPayload = {
				status: "COMPLETED",
				context: {
					productId: that.getView().getModel("ctaskModel").getProperty("/context/productId")
				}
			};
			
			$.ajax({
				url: "/zabfallzabfall/bpmworkflowruntime/v1/xsrf-token",
				method: "GET",
				headers: {
					"X-CSRF-Token": "Fetch"
				},
				success: function (result, xhr, data) {
					var token = data.getResponseHeader("X-CSRF-Token");
					if (token === null) return;
					$.ajax({
						url: "/zabfallzabfall/bpmworkflowruntime/v1/task-instances/"+ taskId,
						type: "PATCH",
						data: JSON.stringify(oPayload), // JSON.stringify(workflowStartPayload),
						headers: {
							"X-CSRF-Token": token,
							"Content-Type": "application/json"
						},
						async: false,
						success: function (data) {
						//	MessageBox.success("workflow call successfull");
						that.getOwnerComponent().getComponentData().startupParameters.inboxAPI.updateTask("NA", taskId);
					//	console.log(data);
						},
						Error: function (data) {
						//	MessageBox.error("workflow call failed");
					//	console.log(data);
						}
					});
				}
			});
			
			
			
		}
	});
});