{
	"contents": {
		"b251ae23-0260-4674-9c0b-b152c665e57a": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "solicitud.autos.solicitudfacturacion",
			"subject": "solicitudfacturacion",
			"name": "solicitudfacturacion",
			"documentation": "workflow para solicitar cotizaciones seguro de autos.",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"acc5d2a3-e990-4860-8fb5-05aeb5a4ba9b": {
					"name": "aprobacion automatica"
				},
				"d156bb23-1925-4fe0-9f39-e2abfb878c48": {
					"name": "aprobado"
				},
				"ac2e9882-867a-4945-bd23-fd2b28dffd40": {
					"name": "notificar solicitud recibida"
				},
				"56ab1f83-b53b-4f0d-9ff1-7ee5670bcf78": {
					"name": "usuario revisa el work item"
				},
				"8464a312-3bd5-4d38-8ac4-394ad1513134": {
					"name": "se debe aprobar manualmente?"
				},
				"34a1cd59-05e4-4edb-b730-4bc9b946e871": {
					"name": "enviar form solicitud rechazada"
				},
				"ce816a60-9c92-4a9f-9a02-d101b2b2162d": {
					"name": "Envio de cotizacion "
				},
				"87dca8f9-8632-4bbf-a0c5-2ee733159059": {
					"name": "Reglas aprobacion"
				},
				"4119ad5a-cc72-4668-be9b-92e2c4e9a8ba": {
					"name": "ScriptTask2"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"d3a94769-9ab3-4442-8540-92ac7d971f5d": {
					"name": "SequenceFlow29"
				},
				"52bb2956-be1b-4990-be88-ed9d2c9b1c81": {
					"name": "SequenceFlow31"
				},
				"1ec299de-e171-45a3-a54c-a96e87bd12a9": {
					"name": "no"
				},
				"b02a7dd5-3e1d-4ac2-b364-05c96139c197": {
					"name": "si"
				},
				"038d303c-0952-41cd-a2f9-71cc6b8316c6": {
					"name": "SequenceFlow35"
				},
				"da71043a-73f9-464a-aca0-ac1d862888f7": {
					"name": "si"
				},
				"f10afa2c-2fbb-49cb-ab1e-aa7fbbe6861b": {
					"name": "SequenceFlow38"
				},
				"606869b0-90bf-4c8b-9073-ca20a7234811": {
					"name": "SequenceFlow40"
				},
				"ab00ac6f-3a83-4409-a178-a6d926ae1ca3": {
					"name": "no"
				},
				"6e9efd5e-e6b7-4d7b-9a34-71bf5a3c304c": {
					"name": "SequenceFlow42"
				},
				"5e35a13d-157b-4907-b26e-5ce85f3bb4cf": {
					"name": "SequenceFlow43"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"acc5d2a3-e990-4860-8fb5-05aeb5a4ba9b": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway6",
			"name": "aprobacion automatica",
			"default": "ab00ac6f-3a83-4409-a178-a6d926ae1ca3"
		},
		"d156bb23-1925-4fe0-9f39-e2abfb878c48": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask4",
			"name": "aprobado",
			"mailDefinitionRef": "9f15a806-79a7-4fa5-b536-2b2c8699122c"
		},
		"ac2e9882-867a-4945-bd23-fd2b28dffd40": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask6",
			"name": "notificar solicitud recibida",
			"mailDefinitionRef": "77713475-6882-4b01-85d1-e4ede3c68a61"
		},
		"56ab1f83-b53b-4f0d-9ff1-7ee5670bcf78": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Revisión de solicitud de cotización",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "milcaph.19@gmail.com",
			"formReference": "/forms/solicitudfacturacion/solicitudcotizacion.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "solicitudcotizacion"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask10",
			"name": "usuario revisa el work item"
		},
		"8464a312-3bd5-4d38-8ac4-394ad1513134": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway7",
			"name": "se debe aprobar manualmente?",
			"default": "1ec299de-e171-45a3-a54c-a96e87bd12a9"
		},
		"34a1cd59-05e4-4edb-b730-4bc9b946e871": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask7",
			"name": "enviar form solicitud rechazada",
			"mailDefinitionRef": "6c4290e4-6d49-4189-b578-b71a90f3aed6"
		},
		"ce816a60-9c92-4a9f-9a02-d101b2b2162d": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask8",
			"name": "Envio de cotizacion ",
			"documentation": "Envio de cotizacion ",
			"mailDefinitionRef": "bdea084a-6c7c-4772-9945-30677cf3e393"
		},
		"87dca8f9-8632-4bbf-a0c5-2ee733159059": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/solicitudfacturacion/ReglaDeAprobacion.js",
			"id": "scripttask1",
			"name": "Reglas aprobacion"
		},
		"4119ad5a-cc72-4668-be9b-92e2c4e9a8ba": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/solicitudfacturacion/reglaNegocioPrecio.js",
			"id": "scripttask2",
			"name": "ScriptTask2"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "ac2e9882-867a-4945-bd23-fd2b28dffd40"
		},
		"d3a94769-9ab3-4442-8540-92ac7d971f5d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow29",
			"name": "SequenceFlow29",
			"sourceRef": "ac2e9882-867a-4945-bd23-fd2b28dffd40",
			"targetRef": "87dca8f9-8632-4bbf-a0c5-2ee733159059"
		},
		"52bb2956-be1b-4990-be88-ed9d2c9b1c81": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow31",
			"name": "SequenceFlow31",
			"sourceRef": "56ab1f83-b53b-4f0d-9ff1-7ee5670bcf78",
			"targetRef": "8464a312-3bd5-4d38-8ac4-394ad1513134"
		},
		"1ec299de-e171-45a3-a54c-a96e87bd12a9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow33",
			"name": "no",
			"sourceRef": "8464a312-3bd5-4d38-8ac4-394ad1513134",
			"targetRef": "34a1cd59-05e4-4edb-b730-4bc9b946e871"
		},
		"b02a7dd5-3e1d-4ac2-b364-05c96139c197": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask10.last.decision == \"aprobar_solicitud\"}",
			"id": "sequenceflow34",
			"name": "si",
			"sourceRef": "8464a312-3bd5-4d38-8ac4-394ad1513134",
			"targetRef": "4119ad5a-cc72-4668-be9b-92e2c4e9a8ba"
		},
		"038d303c-0952-41cd-a2f9-71cc6b8316c6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow35",
			"name": "SequenceFlow35",
			"sourceRef": "ce816a60-9c92-4a9f-9a02-d101b2b2162d",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"da71043a-73f9-464a-aca0-ac1d862888f7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.solicitud.envioCotizacionAutomatico == \"true\"}",
			"id": "sequenceflow37",
			"name": "si",
			"sourceRef": "acc5d2a3-e990-4860-8fb5-05aeb5a4ba9b",
			"targetRef": "d156bb23-1925-4fe0-9f39-e2abfb878c48"
		},
		"f10afa2c-2fbb-49cb-ab1e-aa7fbbe6861b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow38",
			"name": "SequenceFlow38",
			"sourceRef": "34a1cd59-05e4-4edb-b730-4bc9b946e871",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"606869b0-90bf-4c8b-9073-ca20a7234811": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow40",
			"name": "SequenceFlow40",
			"sourceRef": "d156bb23-1925-4fe0-9f39-e2abfb878c48",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"ab00ac6f-3a83-4409-a178-a6d926ae1ca3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow41",
			"name": "no",
			"sourceRef": "acc5d2a3-e990-4860-8fb5-05aeb5a4ba9b",
			"targetRef": "56ab1f83-b53b-4f0d-9ff1-7ee5670bcf78"
		},
		"6e9efd5e-e6b7-4d7b-9a34-71bf5a3c304c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow42",
			"name": "SequenceFlow42",
			"sourceRef": "87dca8f9-8632-4bbf-a0c5-2ee733159059",
			"targetRef": "acc5d2a3-e990-4860-8fb5-05aeb5a4ba9b"
		},
		"5e35a13d-157b-4907-b26e-5ce85f3bb4cf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow43",
			"name": "SequenceFlow43",
			"sourceRef": "4119ad5a-cc72-4668-be9b-92e2c4e9a8ba",
			"targetRef": "ce816a60-9c92-4a9f-9a02-d101b2b2162d"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"8138e5d8-248d-4ccd-b258-b7104427bd14": {},
				"0b2a4254-7151-493b-a9cd-8ddec24a91f3": {},
				"cd079e08-e518-4ce1-ac0b-a17ed5aae8ab": {},
				"953e8d5b-e400-4a1f-a915-b2ad658ddff4": {},
				"2345e2bb-8b4f-491c-bc80-becdd30702d3": {},
				"7cf9f740-a6ea-4516-b797-5b5a8640909b": {},
				"2720e9f4-692b-43de-84f0-8104704b16f4": {},
				"e0d80d26-7a0f-456c-99e3-64c9be721145": {},
				"d3a501aa-2bfc-472f-9c2e-423ff4a95eb0": {},
				"4d5771f5-528e-4848-af34-eaf9d933d14c": {},
				"4bec5c07-adb1-45b8-b098-dd15f9399a9b": {},
				"df2acca4-06fc-447f-8d42-6e56993cdfc9": {},
				"6b64d184-93fe-4cf0-a13c-b1dcb8494401": {},
				"cd37f478-7790-4c5d-8ded-f0b267007ffa": {},
				"7f164916-96ac-4aa9-9aaa-d3e89d7bb1b8": {},
				"2024dc99-c7e9-469e-b506-c9ef245ed2f3": {},
				"462157d0-f40e-40c2-9f7d-7fb3858ad36f": {},
				"fc088929-1584-482f-9831-b9884f72f172": {},
				"35389c33-4384-4aad-a798-bd5ec9f697c8": {},
				"ef112d86-1fa1-4560-b01c-2f5792220c68": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 19,
			"y": 25,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 970,
			"y": 28.5,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "35,44.5 132,44.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "cd079e08-e518-4ce1-ac0b-a17ed5aae8ab",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"8138e5d8-248d-4ccd-b258-b7104427bd14": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 333,
			"y": 25,
			"object": "acc5d2a3-e990-4860-8fb5-05aeb5a4ba9b"
		},
		"0b2a4254-7151-493b-a9cd-8ddec24a91f3": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 309,
			"y": 190,
			"width": 100,
			"height": 60,
			"object": "d156bb23-1925-4fe0-9f39-e2abfb878c48"
		},
		"cd079e08-e518-4ce1-ac0b-a17ed5aae8ab": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 82,
			"y": 18,
			"width": 100,
			"height": 60,
			"object": "ac2e9882-867a-4945-bd23-fd2b28dffd40"
		},
		"953e8d5b-e400-4a1f-a915-b2ad658ddff4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "132,47.75 259.25,47.75",
			"sourceSymbol": "cd079e08-e518-4ce1-ac0b-a17ed5aae8ab",
			"targetSymbol": "462157d0-f40e-40c2-9f7d-7fb3858ad36f",
			"object": "d3a94769-9ab3-4442-8540-92ac7d971f5d"
		},
		"2345e2bb-8b4f-491c-bc80-becdd30702d3": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 457,
			"y": 18,
			"width": 100,
			"height": 60,
			"object": "56ab1f83-b53b-4f0d-9ff1-7ee5670bcf78"
		},
		"7cf9f740-a6ea-4516-b797-5b5a8640909b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 589,
			"y": 25,
			"object": "8464a312-3bd5-4d38-8ac4-394ad1513134"
		},
		"2720e9f4-692b-43de-84f0-8104704b16f4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "507,47 610,47",
			"sourceSymbol": "2345e2bb-8b4f-491c-bc80-becdd30702d3",
			"targetSymbol": "7cf9f740-a6ea-4516-b797-5b5a8640909b",
			"object": "52bb2956-be1b-4990-be88-ed9d2c9b1c81"
		},
		"e0d80d26-7a0f-456c-99e3-64c9be721145": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 546,
			"y": 190,
			"width": 100,
			"height": 60,
			"object": "34a1cd59-05e4-4edb-b730-4bc9b946e871"
		},
		"d3a501aa-2bfc-472f-9c2e-423ff4a95eb0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "610,67 610,128.5 596,128.5 596,189.5",
			"sourceSymbol": "7cf9f740-a6ea-4516-b797-5b5a8640909b",
			"targetSymbol": "e0d80d26-7a0f-456c-99e3-64c9be721145",
			"object": "1ec299de-e171-45a3-a54c-a96e87bd12a9"
		},
		"4d5771f5-528e-4848-af34-eaf9d933d14c": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 829,
			"y": 18,
			"width": 100,
			"height": 60,
			"object": "ce816a60-9c92-4a9f-9a02-d101b2b2162d"
		},
		"4bec5c07-adb1-45b8-b098-dd15f9399a9b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "610,49.5 719,49.5",
			"sourceSymbol": "7cf9f740-a6ea-4516-b797-5b5a8640909b",
			"targetSymbol": "35389c33-4384-4aad-a798-bd5ec9f697c8",
			"object": "b02a7dd5-3e1d-4ac2-b364-05c96139c197"
		},
		"df2acca4-06fc-447f-8d42-6e56993cdfc9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "879,47 987.5,47",
			"sourceSymbol": "4d5771f5-528e-4848-af34-eaf9d933d14c",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "038d303c-0952-41cd-a2f9-71cc6b8316c6"
		},
		"6b64d184-93fe-4cf0-a13c-b1dcb8494401": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "356.5,46 356.5,231",
			"sourceSymbol": "8138e5d8-248d-4ccd-b258-b7104427bd14",
			"targetSymbol": "0b2a4254-7151-493b-a9cd-8ddec24a91f3",
			"object": "da71043a-73f9-464a-aca0-ac1d862888f7"
		},
		"cd37f478-7790-4c5d-8ded-f0b267007ffa": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "596,220 991,220 991,46",
			"sourceSymbol": "e0d80d26-7a0f-456c-99e3-64c9be721145",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "f10afa2c-2fbb-49cb-ab1e-aa7fbbe6861b"
		},
		"7f164916-96ac-4aa9-9aaa-d3e89d7bb1b8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "359,220 359,276 1055,276 1055,47 987.5,47",
			"sourceSymbol": "0b2a4254-7151-493b-a9cd-8ddec24a91f3",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "606869b0-90bf-4c8b-9073-ca20a7234811"
		},
		"2024dc99-c7e9-469e-b506-c9ef245ed2f3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "354,47 507,47",
			"sourceSymbol": "8138e5d8-248d-4ccd-b258-b7104427bd14",
			"targetSymbol": "2345e2bb-8b4f-491c-bc80-becdd30702d3",
			"object": "ab00ac6f-3a83-4409-a178-a6d926ae1ca3"
		},
		"462157d0-f40e-40c2-9f7d-7fb3858ad36f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 209.25,
			"y": 17.5,
			"width": 100,
			"height": 60,
			"object": "87dca8f9-8632-4bbf-a0c5-2ee733159059"
		},
		"fc088929-1584-482f-9831-b9884f72f172": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "259.25,46.75 354,46.75",
			"sourceSymbol": "462157d0-f40e-40c2-9f7d-7fb3858ad36f",
			"targetSymbol": "8138e5d8-248d-4ccd-b258-b7104427bd14",
			"object": "6e9efd5e-e6b7-4d7b-9a34-71bf5a3c304c"
		},
		"35389c33-4384-4aad-a798-bd5ec9f697c8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 669,
			"y": 18,
			"width": 100,
			"height": 60,
			"object": "4119ad5a-cc72-4668-be9b-92e2c4e9a8ba"
		},
		"ef112d86-1fa1-4560-b01c-2f5792220c68": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "719,48 879,48",
			"sourceSymbol": "35389c33-4384-4aad-a798-bd5ec9f697c8",
			"targetSymbol": "4d5771f5-528e-4848-af34-eaf9d933d14c",
			"object": "5e35a13d-157b-4907-b26e-5ce85f3bb4cf"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 4,
			"sequenceflow": 43,
			"startevent": 1,
			"endevent": 1,
			"usertask": 10,
			"scripttask": 2,
			"mailtask": 8,
			"exclusivegateway": 7,
			"referencedsubflow": 1
		},
		"77713475-6882-4b01-85d1-e4ede3c68a61": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "milcaph.19@gmail.com",
			"cc": "mkengya@gmail.com",
			"subject": "Solicitud de cotización crédito automotriz",
			"text": "Solicitud de cotización crédito automotriz",
			"id": "maildefinition1"
		},
		"9f15a806-79a7-4fa5-b536-2b2c8699122c": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "milcaph.19@gmail.com",
			"cc": "mkengya@gmail.com",
			"subject": "Solicitud de cotización enviada",
			"text": "Solicitud de cotización enviada",
			"id": "maildefinition2"
		},
		"6c4290e4-6d49-4189-b578-b71a90f3aed6": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "milcaph.19@gmail.com",
			"subject": "Solicitud rechazada",
			"text": "Su solicitud ha sido rechazada",
			"id": "maildefinition3"
		},
		"bdea084a-6c7c-4772-9945-30677cf3e393": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition4",
			"to": "milcaph.19@gmail.com",
			"cc": "mkengya@gmail.com",
			"subject": "Envío de cotización ",
			"text": "Envío de cotización ",
			"id": "maildefinition4"
		}
	}
}