sap.ui.define([
	"sap/ui/core/mvc/Controller",
	"sap/m/MessageBox"
], function (Controller, MessageBox) {
	"use strict";

	return Controller.extend("zza.zza.controller.View1", {
		onInit: function () {

		},
		onPress: function (oEvent) {
			debugger;

			var context = {
				"RequestId": "CAPEX_REQ_00_000",
				"Title": "Build mobile apps",
				"productId": "2",
				"Requester": {
					"Name": "John Dilbert",
					"Email": "john.dilbert@saptest.com",
					"UserId": "P000000",
					"Comment": "Please approve the capital expenditure"
				},
				"Investment": {
					"TotalCost": 10000,
					"Type": "Software",
					"CAPEX": 10000,
					"OPEX": 4000,
					"Division": "BPM",
					"ROI": 5,
					"Country": "Germany",
					"Currency": "EUR",
					"Description": "Provide a fresh experience for our customers by providing new apps for our services"
				},

				"rulesRequest": {
					"RuleServiceId": "9ea8faaf6a3d41adac2b791a92303532",
					"Vocabulary": [{
						"Employee": {
							"IsFullTimeEmployee": true,
							"countryofCompany": "USA",
							"jobTitle": "Engineer II",
							"company": "2000"
						}
					}]
				},
				"workflowRequest": {
					"definitionId": "bpm_wf_fall_001",
					"context": {}
				}
			};
			var definitionId = "bpm_wf_001";
			var oPayload = {
				definitionId: definitionId,
				context: context
			};

			$.ajax({
				url: "/zzazza/bpmworkflowruntime/v1/xsrf-token",
				method: "GET",
				headers: {
					"X-CSRF-Token": "Fetch"
				},
				success: function (result, xhr, data) {
					var token = data.getResponseHeader("X-CSRF-Token");
					if (token === null) return;
					debugger;
					$.ajax({
						url: "/zzazza/bpmworkflowruntime/v1/workflow-instances",
						type: "POST",
						data: JSON.stringify(oPayload), // JSON.stringify(workflowStartPayload),
						headers: {
							"X-CSRF-Token": token,
							"Content-Type": "application/json"
						},
						async: false,
						success: function (data) {
							MessageBox.success("workflow call successfull");
						},
						Error: function (data) {
							MessageBox.error("workflow call failed");
						}
					});
				}
			});
		}
	});

});