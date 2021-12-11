{
	"contents": {
		"229248a6-e0e3-4a4c-b381-d460e0c6519f": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "bpm_wf_fall_001",
			"subject": "bpm_wf_fall_001",
			"name": "bpm_wf_fall_001",
			"documentation": "",
			"lastIds": "a658db4e-885f-40b3-b156-51a356011903",
			"events": {
				"51f8acf3-877d-41c0-bb32-637c148eb1dc": {
					"name": "StartEvent1"
				},
				"857fdf62-75c2-4035-bc6a-85b4fa9a46af": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"5a903be6-6cfb-46e0-b47a-e8b214b8c8c1": {
					"name": "UserTask1"
				}
			},
			"sequenceFlows": {
				"4cd0691d-fd9b-40bb-92a4-fcf96d9576a2": {
					"name": "SequenceFlow1"
				},
				"12a5e103-bcae-465f-bbf7-b6d839dc52b3": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"1f28d008-ad12-4766-b927-7992d192a636": {}
			}
		},
		"51f8acf3-877d-41c0-bb32-637c148eb1dc": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1",
			"sampleContextRefs": {
				"2894a077-1c5c-4eca-b82d-5a9d4ab53608": {}
			}
		},
		"857fdf62-75c2-4035-bc6a-85b4fa9a46af": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"4cd0691d-fd9b-40bb-92a4-fcf96d9576a2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "51f8acf3-877d-41c0-bb32-637c148eb1dc",
			"targetRef": "5a903be6-6cfb-46e0-b47a-e8b214b8c8c1"
		},
		"1f28d008-ad12-4766-b927-7992d192a636": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"22df818d-5e7a-4687-8b74-200982c6e1de": {},
				"bc46768d-e098-485a-9b93-29a2928c2edf": {},
				"22359802-da97-449d-ba32-0c18760d6f3b": {},
				"9aa535ab-8899-424e-934f-d041a7207812": {},
				"6b7ae89a-c9bb-40ca-90eb-aa976e73ba70": {}
			}
		},
		"22df818d-5e7a-4687-8b74-200982c6e1de": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "51f8acf3-877d-41c0-bb32-637c148eb1dc"
		},
		"bc46768d-e098-485a-9b93-29a2928c2edf": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 340,
			"y": 100,
			"width": 35,
			"height": 35,
			"object": "857fdf62-75c2-4035-bc6a-85b4fa9a46af"
		},
		"22359802-da97-449d-ba32-0c18760d6f3b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116.375 236.24147286593848,116.375",
			"sourceSymbol": "22df818d-5e7a-4687-8b74-200982c6e1de",
			"targetSymbol": "9aa535ab-8899-424e-934f-d041a7207812",
			"object": "4cd0691d-fd9b-40bb-92a4-fcf96d9576a2"
		},
		"a658db4e-885f-40b3-b156-51a356011903": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"5a903be6-6cfb-46e0-b47a-e8b214b8c8c1": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Fall out User Task",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "imran.endeavour@gmail.com",
			"formReference": "/forms/bpm_wf_fall_001/Decision.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "decision"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "UserTask1",
			"documentation": "UserTask1"
		},
		"9aa535ab-8899-424e-934f-d041a7207812": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 186.24147286593848,
			"y": 86.75,
			"width": 100,
			"height": 60,
			"object": "5a903be6-6cfb-46e0-b47a-e8b214b8c8c1"
		},
		"12a5e103-bcae-465f-bbf7-b6d839dc52b3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "5a903be6-6cfb-46e0-b47a-e8b214b8c8c1",
			"targetRef": "857fdf62-75c2-4035-bc6a-85b4fa9a46af"
		},
		"6b7ae89a-c9bb-40ca-90eb-aa976e73ba70": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "236.24147286593848,117.125 357.5,117.125",
			"sourceSymbol": "9aa535ab-8899-424e-934f-d041a7207812",
			"targetSymbol": "bc46768d-e098-485a-9b93-29a2928c2edf",
			"object": "12a5e103-bcae-465f-bbf7-b6d839dc52b3"
		},
		"2894a077-1c5c-4eca-b82d-5a9d4ab53608": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/bpm_wf_fall_001/initContext.json",
			"id": "default-start-context"
		}
	}
}