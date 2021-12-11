{
	"contents": {
		"84c77f40-0c22-435c-b191-aa12e355ec24": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "bpm_wf_001",
			"subject": "bpm_wf_001",
			"name": "bpm_wf_001",
			"lastIds": "45bdee6e-6f1e-4ab0-b575-69a1c30d2c2b",
			"events": {
				"40e32321-3631-428e-818c-52134c8a2e6e": {
					"name": "StartEvent1"
				},
				"82e000b1-8676-4b43-a800-de43e8ab4880": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"301571a1-b7be-4b48-8985-8c6b254b2360": {
					"name": "prepareData"
				},
				"a1c0b1ee-6e0f-4ce9-820a-852cc2d44ff6": {
					"name": "UserTask1"
				},
				"8dad6809-ab10-410f-9725-b3b5106964ed": {
					"name": "GetProductDetails"
				},
				"425b7fcd-dc35-4aec-bf34-0811773f91c2": {
					"name": "calling business rules"
				},
				"af972161-409a-4b91-adeb-fc89a1320742": {
					"name": "call Fallout Workflow"
				}
			},
			"sequenceFlows": {
				"bc0b6394-a5be-4510-ae53-e15a818d72c9": {
					"name": "SequenceFlow1"
				},
				"fa7739b9-3ed0-4b31-bd12-4d7ed5bf4e05": {
					"name": "SequenceFlow2"
				},
				"b028ab59-07c4-4983-9b83-4b2945f9991a": {
					"name": "SequenceFlow3"
				},
				"71977ecb-0ddd-4152-92dc-bcfb14d9bffd": {
					"name": "SequenceFlow4"
				},
				"d686a172-85e6-404b-b142-8e1e4af053d7": {
					"name": "SequenceFlow5"
				},
				"cd67c362-5b44-469f-a527-6a5a01f8408b": {
					"name": "SequenceFlow6"
				}
			},
			"diagrams": {
				"bff0ec43-72d8-42e8-b468-4f6ddd3d0b09": {}
			}
		},
		"40e32321-3631-428e-818c-52134c8a2e6e": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"10789063-da0a-4e87-9c78-f02e500f5fb9": {}
			}
		},
		"82e000b1-8676-4b43-a800-de43e8ab4880": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"301571a1-b7be-4b48-8985-8c6b254b2360": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/bpm_wf_001/prepareData.js",
			"id": "scripttask1",
			"name": "prepareData"
		},
		"a1c0b1ee-6e0f-4ce9-820a-852cc2d44ff6": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Fallout",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://zabfallzabfall/zabfall.zabfall",
			"recipientUsers": "imran.endeavour@gmail.com",
			"id": "usertask1",
			"name": "UserTask1"
		},
		"8dad6809-ab10-410f-9725-b3b5106964ed": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "Northwind",
			"path": "/V3/Northwind/Northwind.svc/Products(${context.productId})?$format=json",
			"httpMethod": "GET",
			"responseVariable": "${context.productData}",
			"id": "servicetask1",
			"name": "GetProductDetails",
			"documentation": "Get Product details from northwind odata service"
		},
		"425b7fcd-dc35-4aec-bf34-0811773f91c2": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "br",
			"path": "/rules-service/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.rulesRequest}",
			"responseVariable": "${context.rulesResponse}",
			"id": "servicetask2",
			"name": "calling business rules",
			"apiReference": "03d6359f-02db-420c-a6ec-b13846fe379a"
		},
		"af972161-409a-4b91-adeb-fc89a1320742": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "wf",
			"path": "/workflow-service/rest/v1/workflow-instances",
			"httpMethod": "POST",
			"requestVariable": "${context.workflowRequest}",
			"responseVariable": "${context.workflowResponse}",
			"id": "servicetask3",
			"name": "call Fallout Workflow"
		},
		"bc0b6394-a5be-4510-ae53-e15a818d72c9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "40e32321-3631-428e-818c-52134c8a2e6e",
			"targetRef": "301571a1-b7be-4b48-8985-8c6b254b2360"
		},
		"fa7739b9-3ed0-4b31-bd12-4d7ed5bf4e05": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "301571a1-b7be-4b48-8985-8c6b254b2360",
			"targetRef": "a1c0b1ee-6e0f-4ce9-820a-852cc2d44ff6"
		},
		"b028ab59-07c4-4983-9b83-4b2945f9991a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "a1c0b1ee-6e0f-4ce9-820a-852cc2d44ff6",
			"targetRef": "8dad6809-ab10-410f-9725-b3b5106964ed"
		},
		"71977ecb-0ddd-4152-92dc-bcfb14d9bffd": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "8dad6809-ab10-410f-9725-b3b5106964ed",
			"targetRef": "425b7fcd-dc35-4aec-bf34-0811773f91c2"
		},
		"d686a172-85e6-404b-b142-8e1e4af053d7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "425b7fcd-dc35-4aec-bf34-0811773f91c2",
			"targetRef": "af972161-409a-4b91-adeb-fc89a1320742"
		},
		"cd67c362-5b44-469f-a527-6a5a01f8408b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "af972161-409a-4b91-adeb-fc89a1320742",
			"targetRef": "82e000b1-8676-4b43-a800-de43e8ab4880"
		},
		"bff0ec43-72d8-42e8-b468-4f6ddd3d0b09": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"0b230907-d51a-4b7e-bd6d-2b6e98a10995": {},
				"1d5959c4-06c4-4655-b231-6357addcaa0f": {},
				"11016cbb-d9e0-4b02-b096-4bb3d50ceebc": {},
				"c6c75e9d-ef07-4bb3-9b9b-d960541577fa": {},
				"8fd76190-29f0-472f-b70c-d0a621216b5b": {},
				"1504b3fe-37cb-4fb9-a61e-23e5792c69ff": {},
				"04acef40-4134-4e27-be2b-2dd2bfb7bfa4": {},
				"982dae90-1950-4cc1-96a1-d6c8dc19f202": {},
				"45ce66c0-d84d-4dc7-b27f-8e529ed6cb6a": {},
				"7c41a653-786e-41fc-b197-19ef3e25a8b7": {},
				"e0ef96c0-e555-4d1e-b949-851b5f72b4a6": {},
				"3956846c-0b3a-4a56-8405-c95fb5ac4551": {},
				"9f8cf2bb-9935-47b6-9dfb-c560d34395a8": {}
			}
		},
		"10789063-da0a-4e87-9c78-f02e500f5fb9": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/bpm_wf_001/initContext.json",
			"id": "default-start-context"
		},
		"0b230907-d51a-4b7e-bd6d-2b6e98a10995": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "40e32321-3631-428e-818c-52134c8a2e6e"
		},
		"1d5959c4-06c4-4655-b231-6357addcaa0f": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 832,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "82e000b1-8676-4b43-a800-de43e8ab4880"
		},
		"11016cbb-d9e0-4b02-b096-4bb3d50ceebc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "0b230907-d51a-4b7e-bd6d-2b6e98a10995",
			"targetSymbol": "c6c75e9d-ef07-4bb3-9b9b-d960541577fa",
			"object": "bc0b6394-a5be-4510-ae53-e15a818d72c9"
		},
		"c6c75e9d-ef07-4bb3-9b9b-d960541577fa": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "301571a1-b7be-4b48-8985-8c6b254b2360"
		},
		"8fd76190-29f0-472f-b70c-d0a621216b5b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,116.9375 360.37073643296924,116.9375",
			"sourceSymbol": "c6c75e9d-ef07-4bb3-9b9b-d960541577fa",
			"targetSymbol": "1504b3fe-37cb-4fb9-a61e-23e5792c69ff",
			"object": "fa7739b9-3ed0-4b31-bd12-4d7ed5bf4e05"
		},
		"1504b3fe-37cb-4fb9-a61e-23e5792c69ff": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 310.37073643296924,
			"y": 87.125,
			"width": 100,
			"height": 60,
			"object": "a1c0b1ee-6e0f-4ce9-820a-852cc2d44ff6"
		},
		"04acef40-4134-4e27-be2b-2dd2bfb7bfa4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "360.37073643296924,117.21875 489.9353682164847,117.21875",
			"sourceSymbol": "1504b3fe-37cb-4fb9-a61e-23e5792c69ff",
			"targetSymbol": "982dae90-1950-4cc1-96a1-d6c8dc19f202",
			"object": "b028ab59-07c4-4983-9b83-4b2945f9991a"
		},
		"982dae90-1950-4cc1-96a1-d6c8dc19f202": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 439.9353682164847,
			"y": 87.3125,
			"width": 100,
			"height": 60,
			"object": "8dad6809-ab10-410f-9725-b3b5106964ed"
		},
		"45ce66c0-d84d-4dc7-b27f-8e529ed6cb6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "489.9353682164847,117.359375 609.2176841082423,117.359375",
			"sourceSymbol": "982dae90-1950-4cc1-96a1-d6c8dc19f202",
			"targetSymbol": "7c41a653-786e-41fc-b197-19ef3e25a8b7",
			"object": "71977ecb-0ddd-4152-92dc-bcfb14d9bffd"
		},
		"7c41a653-786e-41fc-b197-19ef3e25a8b7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 559.2176841082423,
			"y": 87.40625,
			"width": 100,
			"height": 60,
			"object": "425b7fcd-dc35-4aec-bf34-0811773f91c2"
		},
		"e0ef96c0-e555-4d1e-b949-851b5f72b4a6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "609.2176841082423,117.4296875 726.8588420541212,117.4296875",
			"sourceSymbol": "7c41a653-786e-41fc-b197-19ef3e25a8b7",
			"targetSymbol": "3956846c-0b3a-4a56-8405-c95fb5ac4551",
			"object": "d686a172-85e6-404b-b142-8e1e4af053d7"
		},
		"3956846c-0b3a-4a56-8405-c95fb5ac4551": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 676.8588420541212,
			"y": 87.453125,
			"width": 100,
			"height": 60,
			"object": "af972161-409a-4b91-adeb-fc89a1320742"
		},
		"9f8cf2bb-9935-47b6-9dfb-c560d34395a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "726.8588420541212,117.4765625 849.5,117.4765625",
			"sourceSymbol": "3956846c-0b3a-4a56-8405-c95fb5ac4551",
			"targetSymbol": "1d5959c4-06c4-4655-b231-6357addcaa0f",
			"object": "cd67c362-5b44-469f-a527-6a5a01f8408b"
		},
		"45bdee6e-6f1e-4ab0-b575-69a1c30d2c2b": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"hubapireference": 1,
			"sequenceflow": 6,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 3,
			"scripttask": 1
		},
		"03d6359f-02db-420c-a6ec-b13846fe379a": {
			"classDefinition": "com.sap.bpm.wfs.HubAPIReference",
			"apiPackage": "undefined",
			"api": "SAP_CF_BusinessRules_Runtime_V2",
			"apiName": "Rule Execution API for Cloud Foundry",
			"id": "hubapireference1"
		}
	}
}