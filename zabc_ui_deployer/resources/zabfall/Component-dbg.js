sap.ui.define([
	"sap/ui/core/UIComponent",
	"sap/ui/Device",
	"zabfall/zabfall/model/models"
], function (UIComponent, Device, models) {
	"use strict";

	return UIComponent.extend("zabfall.zabfall.Component", {

		metadata: {
			manifest: "json"
		},

		/**
		 * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
		 * @public
		 * @override
		 */
		init: function () {
			// call the base component's init function
			UIComponent.prototype.init.apply(this, arguments);

			// enable routing
			this.getRouter().initialize();

			// set the device model
			this.setModel(models.createDeviceModel(), "device");
			
			
			debugger;
			if(this.getComponentData()){
			var startupParameters = this.getComponentData().startupParameters;
			if(startupParameters){
			var taskModel = startupParameters.taskModel;
			var taskData = taskModel.getData();
			var taskId = taskData.InstanceID;
			}
			}
			var jsonModel = new sap.ui.model.json.JSONModel();
			jsonModel.setProperty("/taskId",taskId);
			this.setModel(jsonModel,"ctaskModel");
			var that = this;
			$.ajax({
			type: "GET",
			url: "/zabfallzabfall/bpmworkflowruntime/v1/task-instances/" + taskId + "/context",
			success: function(oData){
				
			//	console.log(oData);
			var cModel = that.getModel("ctaskModel");
			cModel.setProperty("/context",oData);
			},
			error: function (jqXhr, sErrorType) {
				
			}
		});
		}
	});
});