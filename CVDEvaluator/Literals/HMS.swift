//
//  HMS.swift
//  CVDEvaluator
//
//  Created by bogdankosh on 2/28/17.
//  Copyright © 2017 IgorKhomiak. All rights reserved.
//

import Foundation

struct HMS {
	
	// Main:
	/*
	// Make mandatory once the values is copied from the Bio section
	static let name = 		"#id:name|      #title:Name*|       #type:#textLeft |  #placeholder:Enter Patient Name | #maxLength: 50 | mandatory: 0"
	// Make mandatory once the values is copied from the Bio section
	static let age = 			"#id:age |      #title:Age*|  #type:#integerLeft| #min:20|  #max:100| #placeholder: Enter Patient age | mandatory: 0"
	static let gender = 		"#id:gender|    #title:Gender*|    #type:#disclosureSimple | #height: 60"
	static let height = 		"#id:txtheight|    #title:Height|    #type:#integerLeft|   #min:100|  #max:240| #placeholder: Enter height in cm"
	static let weight = 		"#id:weight|    #title:Weight|    #type:#integerLeft|   #min:40|  #max:400| #placeholder: Enter weight in kilos"
	static let heartRate = 	"#id:HR| #title:Heart Rate| #type:#integerLeft| #min:30|  #max:300| #placeholder: Enter the Heart Rate"
	// Make mandatory once the values is copied from the Bio section
	static let bioSBP = 		"#id:sbp|       #title:SBP*|  #type:#decimalLeft| #min:60|  #max:300| #placeholder: Enter SBP value | mandatory: 0"
	// Make mandatory once the values is copied from the Bio section
	static let bioDBP = 		"#id:dbp|       #title:DBP*|  #type:#decimalLeft| #min:30|  #max:160| #placeholder: Enter DBP value | mandatory: 0"
	static let orthostaticSBP = "#id:orthostaticSBP | #title:Orthostatic SBP | #type:#integerRight | #min:0 | #max:240 | #placeholder:Enter DBP value "
	static let orthostaticSymptoms = "#id:chkSymptomatic|       #title:Orthostatic Symptoms|  #type:#check"
	*/
	
	// Main:
	// Make mandatory once the values is copied from the Bio section
	static let name = 		"#id:name|      #title:Name*|       #type:#textLeft |  #placeholder:  | #maxLength: 50 | mandatory: 0"
	static let temp = "#id:txttemp |      #title:Temp|  #type:#integerLeft| #min:0|  #max:200| #placeholder:   | mandatory: 0"
	static let respRate = "#id:txtresprate |      #title:Respitory Rate|  #type:#integerLeft| #min:0|  #max:100| #placeholder:   | mandatory: 0"
	// Make mandatory once the values is copied from the Bio section
	static let age = 			"#id:age |      #title:Age*|  #type:#integerLeft| #min:20|  #max:100| #placeholder:   | mandatory: 0"
	static let gender = 		"#id:gender|    #title:Gender*|    #type:#disclosureSimple | #height: 60"
	static let height = 		"#id:txtheight|    #title:Height|    #type:#integerLeft|   #min:100|  #max:240| #placeholder:  "
	static let weight = 		"#id:weight|    #title:Weight|    #type:#integerLeft|   #min:40|  #max:400| #placeholder:  Weight/Kg"
	static let heartRate = 	"#id:HR| #title:Heart Rate| #type:#integerLeft| #min:30|  #max:300| #placeholder:  "
	// Make mandatory once the values is copied from the Bio section
	static let bioSBP = 		"#id:sbp|       #title:SBP*|  #type:#decimalLeft| #min:60|  #max:300| #placeholder: SBP mmHg | mandatory: 0"
	
	static let bioSBPNumber130 = "#id:txtNumberSBP | #title:How many times |#type:#integerRight | #min:1 | #max:20 | #placeholder: jt | #dependsOn: bioSBP| #dependMin: 60| #dependMax: 300"
	static let bioSBPNumber90 = "#id:txtDurationSBP | #title:How many minutes |#type:#integerRight | #min:1 | #max:20 | #placeholder: jt | #dependsOn: bioSBP| #dependMin: 60| #dependMax: 300"
	
	// Make mandatory once the values is copied from the Bio section
	static let bioDBP = 		"#id:dbp|       #title:DBP*|  #type:#decimalLeft| #min:30|  #max:160| #placeholder: DBP mmHg | mandatory: 0"
	
	static let bioDBPNumber90 = "#id:txtNumberDBP | #title:How many times |#type:#integerRight | #min:1 | #max:20 | #placeholder: jt | #dependsOn: bioDBP| #dependMin: 30| #dependMax: 160"
	
	static let orthostaticSBP = "#id:orthostaticSBP | #title:Orthostatic SBP | #type:#integerRight | #min:0 | #max:240 | #placeholder: DBP mmHg "
	static let orthostaticSymptoms = "#id:chkSymptomatic|       #title:Orthostatic Symptoms|  #type:#check"

	static let orthostaticSymptomsq = "#id:chkSymptomatic|       #title:Orthostatic Symptoms jizz faggot|  #type:#check"
	static let orthostaticSymptomsqw = "#id:chkSymptomatic|       #title:Orthostatic Symptoms fuck penis|  #type:#check"
	static let orthostaticSymptomsqwe = "#id:chkSymptomatic|       #title:Orthostatic Symptoms fuck penis kosf|  #type:#check"
	
	static let NYHACCSVClass1 = "#id:chkNYHA1 | #title:NYHA/CCSV Class1 | #type:#check"
	static let NYHACCSVClass2 = "#id:chkNYHA2 | #title:NYHA/CCSV Class2 | #type:#check"
	static let NYHACCSVClass3 = "#id:chkNYHA3 | #title:NYHA/CCSV Class3 | #type:#check"
	static let NYHACCSVClass4 = "#id:chkNYHA4 | #title:NYHA/CCSV Class4 | #type:#check"
	
	static let txt6MWT = "#id:txt6MWT | #title:6MW Distance | #type:#integerRight | #min:50 | #max:600 | #placeholder:  "
	static let TxtVO2 = "#id:TxtVO2 | #title:Max VO² mg/kg/min | #type:#integerRight | #min:6 | #max:40 | #placeholder:  "
	
	// Main -> PAH 1
	static let txtSVR = "#id:txt6MWT | #title:6MW Distance | #type:#integerRight | #min:50 | #max:500 | #placeholder:  "
	static let blnCongenita = "#id:chkCongenital | #title:Congenital Heart Disesea | #type:#disclosureControl"
	static let blnSclero = "#id:chkSclero | #title:Scleroderma | #type:#check"
	static let blnSLE = "#id:chkSLE | #title:SLE | #type:#check"
	static let blnHIV = "#id:chkHIV | #title:HIV | #type:#check"
	static let blnFF = "#id:chkFF | #title:Porto Pulmonary | #type:#check"
	static let blnresp = "#id:chkRESP | #title:Respiratory Disease | #type:#check"
	static let blnIdio = "#id:chkIdio | #title:Idiopathic | #type:#check"
	static let blnPVOD = "#id:chkPVOD | #title:Pulmonary Veno Occlusive Disease | #type:#check"
	static let blnSplen = "#id:chkSplen | #title:Post Splenectomy | #type:#check"
	static let blnFamilial = "#id:chkFamilial | #title:Familial | #type:#check"
	static let blnCTEP = "#id:chkCTEP | #title:Chronic Thrombo Embolic | #type:#check"
	static let blnDrugs = "#id:chkDrugs | #title:Drugs,Toxins | #type:#check"

	static let asdLess2cm = "#id:chkASD | #title:ASD | #type:#check"
	
	// Main -> PAH 1 -> Congenital
	static let blnASD = "#id:chkASD | #title:ASD | #type:#check"
	static let blnVSD = "#id:chkVSD | #title:VSD | #type:#check"
	static let blnPCS = "#id:chkPCS | #title:Post Corrective Surgery | #type:#check"
	static let blnEisen = "#id:chkEisen | #title:Eisenmenger Syndrome | #type:#check"
	
	// Main -> PAH 1 -> Respiratory Disease/Hyposia
	static let txtAHI = "#id:txtAHI | #title:AHI | #type:#integerRight | #min:0 | #max:100 | #placeholder: "
	static let blnOSA = "#id:chkOSA | #title:OSA | #type:#check"
	static let blnILD = "#id:chkILD | #title:IPF/ILD | #type:#check"
	static let blnCOPD = "#id:chkCOPD | #title:COPD | #type:#check"
	
	// Main -> PAH 2
	static let waist = "#id:waist | #title:BMI kg/m² | #type:#integerRight | #min:5 | #max:50 | #placeholder: "
	static let blnCHD = "#id:chkCHD | #title:CHD | #type:#disclosureControl"
	static let blnSAH = "#id:chkSAH | #title:SAH | #type:#check"
	static let blnAF = "#id:chkAF | #title:AF/SVT | #type:#disclosureControl"
	static let blnDM = "#id:chkDM | #title:DM | #type:#check"
	static let dlco = "#id:txtdlco | #title:DLCO,% | #type:#integerRight | #min:1 | #max:99 | #placeholder: "
	static let fev1LT = "#id:txtFEV1 | #title:FEV1,lt | #type:#decimalRight | #min:0.5 | #max:7 | #placeholder: "
	static let fev1Percent = "#id:txtFEVP | #title:FEV1,% | #type:#integerRight | #min:0 | #max:100 | #placeholder: "
	static let icTLC = "#id:txtICTLC | #title:IC/TLC | #type:#decimalRight | #min:0.1 | #max:9 | #placeholder: "
	
	// Main -> PAH 2 -> CHD
	static let blnACS = "#id:chkACS | #title:SAH | #type:#check"
	static let blnPCI = "#id:chkPCI | #title:SAH | #type:#check"
	static let blnStenusis = "#id:chkStenusis | #title:SAH | #type:#check"
	
	// Main -> PAH 2 -> AF/SVT
	static let txtCMP = "#id:txtCMP | #title:Heart Rate | #type:#integerRight | #min:20 | #max:300 | #placeholder: "
	
	// Main -> PAH 3
	static let txtTRJ = "#id:txtTRJ | #title:TR Jet Velocity | #type:#decimalRight | #min:1.0 | #max:6.0 | #placeholder: Value"
	static let txtERVSP = "#id:txtERVSP | #title:Exercise RSVP | #type:#integerRight | #min:16 | #max:144 | #placeholder: Value"
	
	static let blnAD = "#id:chkAD | #title:Advanced Echocardiography | #type:#disclosureControl"
	//static let blnTD = "#id:chkTD | #title:Check if LV TD Done | #type:#check"
	//static let blnRVOT = "#id:chkRVOT | #title:Check if RVOT PW Done | #type:#check"
	//static let blnTPS = "#id:chkTPS | #title:Check if TAPSE Done | #type:#check"
	static let blnTD = "#id:chkTD | #title:Tissue Doppler| #type:#disclosureControl"
	static let blnRVOT = "#id:chkRVOT | #title:RVOT Flow | #type:#disclosureControlExpandable"
	static let blnTPS = "#id:chkTPS | #title:Tapse | #type:#disclosureControlExpandable"
	
	static let blnEsmaller8 = "#id:chkEsmaller8 | #title:E/E' < 8 | #type:#radio | #group: (chkEsmaller8, chkE8to16, chkEgreater16)"
	static let blnE8to16 = "#id:chkE8to16 | #title:E/E' 8-16 | #type:#radio | #group: (chkEsmaller8, chkE8to16, chkEgreater16)"
	static let blnEgreater16 = "#id:chkEgreater16 | #title:E/E' > 16 | #type:#radio | #group: (chkEsmaller8, chkE8to16, chkEgreater16)"
	
	static let blnTei = "#id:chkTei | #title:Short PAAT | #type:#check"
	static let blnTapse = "#id:chkTapse | #title:TAPSE < 2 | #type:#check"

	static let blnMidsystolic = "#id:chkMidsystolic | #title:Midsys Notch | #type:#check"
	static let blnEnlargedRA = "#id:chkEnlargedRA | #title:Enlarged RA | #type:#check"
	static let blnEnlargedRV = "#id:chkEnlargedRV | #title:Enlarged RV | #type:#check"
	static let blnPericardial = "#id:chkPericardial | #title:Pericardial Effusion | #type:#check"
	
	// Valvular
	static let valvularInValvular = "#id:valvularInValvular| #title:Valvular | #type:#disclosureWeather"
	static let valvularSurgeryRiskInValvular = "#id:secvalvular_surgery_risk| #title:Valvular Surgery Risk | #type:#disclosureWeather"
	static let otherSurgicalRiskInValvular = "#id:secother_surgical_risk| #title:Other Surgical Risk  | #type:#disclosureWeather"
	
	// Valvular -> Valvular
	static let lvef = "#id:txtCHF| #title:LVEF  | #type:#integerRight | #min:10 | #max:80 | #placeholder: "
	static let newOnsetAtrialFibrillation = "#id:chknewonsetAF| #title:New Onset Atrial Fibrillation  | #type:#check"
	static let pregnancyInValvular = "#id:pregnancyInValvular| #title:Pregnancy  | #type:#check"
	static let aorticStenosis = "#id:chkAorticStenosis| #title:Aortic Stenosis  | #type:#disclosureControl"
	static let mitralStenosis = "#id:chkMitralStenosis| #title:Mitral Stenosis  | #type:#disclosureControl"
	static let tricuspidStenosis = "#id:chkTricuspidStenosis| #title:Tricuspid Stenosis  | #type:#disclosureControl"
	static let pulmonicStenosis = "#id:chkPulmonicStenosis| #title:Pulmonic Stenosis  | #type:#disclosureControlInputCellExpandable"
	static let aorticRegurgitation = "#id:chkAorticRegurgitation| #title:Aortic Regurgitation  | #type:#disclosureControl"
	static let primaryMitralRegurgitation = "#id:chkMitralRegurgitation| #title:Primary Mitral Regurgitation  | #type:#disclosureControl"
	static let tricuspidRegurgitation = "#id:chkTricuspidRegurgitation| #title:Tricuspid Regurgitation  | #type:#disclosureControl"
	static let pulmonicRegurgitation = "#id:chkPulmonicRegurgitation| #title:Pulmonic Regurgitation  | #type:#disclosureControlExpandable"
	
	// Valvular -> Valvular -> Aortic Stenosis
	static let calcAorticValve = "#id:chkCalcAortValve| #title:Calcific Aortic Stenosis | #type:#check"
	static let congenitallyStenoticAorticValve = "#id:chkCongenStenAortValve| #title:Congenitally Aortic Stenosis | #type:#check"
	static let rheumaticAV = "#id:chkreumaticAV| #title:Rheumatic AV | #type:#check"
	static let calculatedAorticValveArea = "#id:txtCalcAortValveArea| #title:Calculated AVA,cms2 | #type:#decimalRight | #min:0.1 | #max:4.0 | #placeholder: Value"
	static let aorticMeanPressureGradient = "#id:txtAortMeanPressGradient| #title:Mean pressure gradient, mmHg | #type:#integerRight | #min:4 | #max:60 | #placeholder: Value"
	static let aorticValveVelocity = "#id:txtAortValveVel| #title:Aortic valve velocity, m/s | #type:#decimalRight | #min:1.0 | #max:6.0 | #placeholder: Value"
	static let strokeVolumeIndex = "#id:txtStrokeVolIndex| #title:Stroke volume index | #type:#integerRight | #min:1 | #max:9 | #placeholder:  Value"
	static let indexedValveArea = "#id:txtIndexedValveArea| #title:Indexed valve area | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder:  Value"
	static let bicuspidAorticRootDiameter = "#id:txtAortRootDiameter| #title:Aortic Root Diameter, mm | #type:#decimalRight | #min:0.1 | #max:7.0 | #placeholder:  Value"
	
	// Valvular -> Valvular -> Mitral Stenosis
	static let mva = "#id:txtMVA| #title:MVA,cms2 | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder: Value"
	static let phtmsec = "#id:txtPHT| #title:PHT,msec | #type:#integerRight | #min:50 | #max:400 | #placeholder: Value"
	static let rheumaticMVTV = "#id:chkrheumaticMV| #title:Rheumatic MV | #type:#check"
	static let favorableValveMorphology = "#id:chkFavValveMorph| #title:Favorable for valvuloplasty | #type:#check"
	static let laClot = "#id:chkLAClot | #title:LA clot | #type:#check"
	
	// Valvular -> Valvular -> Pulmonic Stenosis
	static let pulmonicValveVelocity = "#id:txtPulValveVel| #title:Pulmonic valve velocity, m/s | #type:#decimalRight | #min:0.5 | #max:5.0 | #placeholder: Value"
	
	// Valvular -> Valvular -> Aortic Regurgitation
	static let holodiastolicFlowReversal = "#id:chkHolodiastolicRev| #title:Holodiastolic reversal | #type:#check"
	static let venaContractaWidth = "#id:txtVenaContractaWidth2| #title:Vena contracta width, mm | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder: Value"
	static let regurgitantVolumeMlBeat = "#id:txtRegurVolume| #title:Regurgitant volume, cc | #type:#integerRight | #min:0 | #max:99 | #placeholder: Value"
	static let regurgitantFraction = "#id:txtRegurFrac| #title:Regurgitant fraction, % | #type:#integerRight | #min:0 | #max:61 | #placeholder: Value"
	static let ero = "#id:txtERO| #title:ERO,cms2 | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder: Value"
	static let lveddmm = "#id:txtLVEDd| #title:LVEDd,mm | #type:#integerRight | #min:10 | #max:90 | #placeholder: Value"
	static let lvesdmm = "#id:txtLVESd| #title:LVESd,mm | #type:#integerRight | #min:10 | #max:60 | #placeholder: Value"
	static let aorticRootDiameter = "#id:txtAorticRootDiameter| #title:Aortic root diameter, mm | #type:#integerRight | #min:2 | #max:9 | #placeholder: Value"
	
	// Valvular -> Valvular -> Tricuspid Regurgitation
	static let txtAnnularDiameter = "#id:txtAnnularDiameter | #title:Annular Diameter, cm | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder: Value"
	static let txtCentralJetArea = "#id:txtCentralJetArea | #title:Central Jet Area, cms2 | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder: Value"
	static let txtVenaContractaWidth = "#id:txtVenaContractaWidth | #title:Vena contracta width, mm | #type:#decimalRight | #min:0.1 | #max:29.0 | #placeholder: Value"
	static let blnHepaticVeinFlowRev = "#id:chkHepaticVeinFlowRev| #title:Hepatic vein flow reversal | #type:#check"
	static let blnabTVleaflet = "#id:chkabTVleaflet| #title:Abnormal leaflets | #type:#check"
	
	
	static let mvacm = "#id:mvacm | #title:MVA cm² | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder: "
	static let centralJetArea = "#id:centralJetArea| #title:Central Jet Area cm² | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder: "
	static let venaContractaWidthInTricuspid = "#id:venaContractaWidthInTricuspid| #title:Vena Contracta Width | #type:#decimalRight | #min:0.1 | #max:9.0 | #placeholder: "
	static let hepaticVeinFlowReversal = "#id:hepaticVeinFlowReversal| #title:Hepatic Vein Flow Reversal | #type:#check"
	static let abnormalTVLeaflets = "#id:abnormalTVLeaflets| #title:Abnormal TV Leaflet(s) | #type:#check"
	
	// Valvular -> Valvular -> Pulmonic Regurgitation
	static let favorableValveMorphologyInPulmonic = "#id:chkWideRegurJet| #title:Wide regurgitant jet | #type:#check"
	static let abnormalPulmonicValveLeaflets = "#id:chkabnpulval| #title:Abnormal valve leaflet| #type:#check"
	
	
	// Valvular -> Valvular Risk Surgery
	static let stsPromLabel = "#id:stsPromLabel| #title:STS PROM Risk Score | #type:#label"
	
	static let lowInVRS = "#id:chklowrisk| #title:Low risk | #type:#check"
	static let intermediateInVRS = "#id:chkintermediaterisk| #title:Intermediate risk | #type:#check"
	static let highInVRS = "#id:chkhighrisk| #title:High risk | #type:#check"
	static let prohibitiveInVRS = "#id:chkprohibitive| #title:Prohibitive risk | #type:#check"
	
	// Valvular -> Other Surgical Risk
	static let supraInguinalVascularSurgery = "#id:chkvascular| #title:Vascular | #type:#check"
	static let lowRiskCataractPlastic = "#id:chklowriskelec| #title:Low risk elective | #type:#check"
	static let intermediateRiskInOSR = "#id:chkelective| #title:Elective | #type:#check"
	static let otherCardiacInOSR = "#id:chkcardiac| #title:Cardiac | #type:#check"
	
	// Advanced LHF
	static let blnHF = "#id:blnHF| #title:Heart Failure | #type:#disclosureControl"
	static let blnnewHF = "#id:chkNewHF| #title:New Onset Heart Failure/Initial Evaluation | #type:#check"
	static let ddOnsetMonthYear = "#id:ddOnsetMonthYear | #title:On Set of Heart Failure | #type:#date | #placeholder: "
	
	// Advanced LHF -> Heart Failure
	static let heartfailureDuration = "#id:heartfailureDuration| #title:Heart Failure Duration| #type:#disclosureControl"
	
	static let txtdur = "#id:txtdur| #title:Heart Failure Duration/Week | #type:#integerRight | #min:0 | #max:9999 | #placeholder: "
	
	static let blnD1 = "#id:chkD1| #title:In Hospital D1 | #type:#check"
	static let blnD2 = "#id:chkD2| #title:In Hospital D2 | #type:#check"
	static let blnD3 = "#id:chkD3| #title:In Hospital D3 | #type:#check"
	static let blnD4 = "#id:chkD4| #title:Day 4 | #type:#check"
	static let blnD5 = "#id:chkD5| #title:Day 5 | #type:#check"
	static let blnD6 = "#id:chkD6| #title:Day 6 | #type:#check"
	static let blnHFPLVF = "#id:chkHFPLVF| #title:HFPLVF | #type:#check"
	static let blnfoutpt = "#id:chkfoutpt| #title:Failed Outpt Rx | #type:#check"
	static let blnLVEF = "#id:txtLVEF |    #title:LVEF|    #type:#integerRight"
	static let blnCRTI = "#id:chkCRTI| #title:SP CRT | #type:#check"
	
	static let clinics = "#id:clinics| #title:Clinics | #type:#disclosureWeather"
	static let etiology = "#id:etiology| #title:Etiology | #type:#disclosureWeather"
	static let stageClass = "#id:stageClass| #title:Stage/Class | #type:#disclosureWeather"
	static let arrthymias = "#id:arrthymias| #title:Arrthymias | #type:#disclosureWeather"
	static let homeTherapeutics = "#id:homeTherapeutics| #title:Home Therapeutics | #type:#disclosureWeather"
	static let therapeutics = "#id:therapeutics | #title:Therapeutics | #type:#disclosureWeather"
	
	// Advanced LHF -> Heart Failure -> Clinics
	static let txtCHF = "#id:txtCHF| #title:LVEF | #type:#integerRight | #min:10 | #max:80 | #placeholder: Value"
	static let txtO2sat = "#id:txtO2Sat| #title: O2sat% | #type:#integerRight | #min:50 | #max:100 | #placeholder: Value"
	static let txtproBNP = "#id:txtproBNP| #title:NT-proBNP pg/ml | #type:#integerRight | #min:50 | #max:100000 | #placeholder: Value"
	
	static let blnPEd = "#id:chkPEd| #title:Pulmonary Edema | #type:#check"
	static let blnS3 = "#id:chkS3| #title:S3 or S4 Gallop | #type:#check"
	static let blnshock = "#id:chkshock| #title:Cardio Shock | #type:#check"
	static let blnDOE = "#id:chkDOE| #title:Dyspnea on Exertion | #type:#check"
	static let blndysp = "#id:chkdysp| #title:Dyspnea at Rest > 2Hrs after Rx/Orthopnea | #type:#check"
	static let blnMR = "#id:chkMR| #title:New Ralles | #type:#check"
	static let blnhepato = "#id:chkhepato| #title:Hepatojugular Reflux | #type:#check"
	static let blnJVD = "#id:chkJVD| #title:Jugular Venous Distention | #type:#check"
	static let blnweight = "#id:chkweight| #title:Weight Gain | #type:#check"
	static let blnAMS = "#id:chkAMS| #title:Any CNS Symptoms | #type:#check"
	static let blnWG = "#id:chkWG| #title:Worsening Renal Fx | #type:#check"
	static let blnedema = "#id:chkedema| #title:Edema | #type:#check"
	
	// Advanced LHF -> Heart Failure -> Etiology
	static let blnNonischemicCMP = "#id:chkNonischemicCMP| #title:DCM | #type:#check"
	static let blnischemicCMP = "#id:chkischemicCMP| #title:HOCM | #type:#disclosureControlExpandable"
	static let blnischemic = "#id:chkischemic| #title:Ischemic | #type:#check"
	static let blncardiotoxins = "#id:chkcardiotoxins| #title:Cardiotoxins | #type:#check"
	static let blnFamHXofCMP = "#id:chkFamHXofCMP| #title:Familiar CMP Associated with Sudden Death | #type:#check"
	static let blnvalvular = "#id:chkvalvular| #title:Valvular Heart Disease | #type:#check"
	static let blnSuspectedRVDysplasia = "#id:chkSuspectedRVDysplasia| #title:RV Dysplasia | #type:#check"
	static let blnMI = "#id:chkMI| #title:MI > 45 Days | #type:#check"
	
	// Advanced LHF -> Heart Failure -> Etiology -> HOCM
	static let blnLVHGreater30 = "#id:chkLVHGreater30| #title:LVH ≥ 30mm | #type:#check"
	static let blnAbnormBP = "#id:chkAbnormBP| #title:Abnormal BP Response to Exercise | #type:#check"
	static let blnFHSD = "#id:chkFamHistSuddenDeath| #title:Family History of Sudden Death | #type:#check"
	
	// Advanced LHF -> Heart Failure -> Stage/Class
	static let blnA = "#id:chkA| #title:At High Risk for HF, but without Structural Heart Disease or Symptoms of HF NYHA/CCVS CLASS 0 | #type:#check"
	static let blnB = "#id:chkB| #title:Structural Heart Disease, but without Signs/Symptoms of HF | #type:#check"
	static let blnC = "#id:chkC| #title:Structural Heart Disease with Prior or Current Symptoms of HF | #type:#check"
	static let blnD = "#id:chkD| #title:Refactory HF Requiring Specialized Interventions | #type:#disclosureControl"
	static let blnNYHA1 = "#id:chkNYHA1| #title:NYHA/CCVS CLASS 1 | #type:#radio | #group: (chkNYHA1, chkNYHA2,chkNYHA3,chkNYHA4)"
	static let blnNYHA2 = "#id:chkNYHA2| #title:NYHA/CCVS CLASS 2 | #type:#radio | #group: (chkNYHA1, chkNYHA2,chkNYHA3,chkNYHA4)"
	static let blnNYHA3 = "#id:chkNYHA3| #title:NYHA/CCVS CLASS 3 | #type:#radio | #group: (chkNYHA1, chkNYHA2,chkNYHA3,chkNYHA4)"
	static let blnNYHA4 = "#id:chkNYHA4| #title:NYHA/CCVS CLASS 4 | #type:#radio | #group: (chkNYHA1, chkNYHA2,chkNYHA3,chkNYHA4)"
	
	// Advanced LHF -> Heart Failure -> Stage/Class -> Refactory HF
	static let calculateHFSSLabel = "#id:CalculateHFSS | #title:Calculate HFSS, enter NAmeq, VO₂ max, Heart Rate, and ECG QRS Duration | #type:#label | #height:80"
	static let blncom = "#id:chkcom | #title:No Significant Comorbidities |#type:#check"
	static let blnfrequent = "#id:chkfrequent | #title:Frequent Hospital Admissions |#type:#check"
	
	// Advanced LHF -> Heart Failure -> Arrthymias
	static let blnAVNodeDisease = "#id:chkAVNodeDisease | #title:AV Node Dysfunction |#type:#check"
	static let blnSinusNodeDysfunction = "#id:chkSinusNodeDysfunction | #title:Sinus Node Dysfunction |#type:#check"
	static let blnED = "#id:chkED | #title:Venticular Tachycardia |#type:#check"
	static let blnNSVT = "#id:chkNSVT | #title:NSVT |#type:#check"
	
	// Advanced LHF -> Heart Failure -> Home Therapetics
	static let blncar = "#id:chkcar | #title:B Blocker |#type:#disclosureControl"
	static let blnace = "#id:chkace | #title:Acel/ARB |#type:#check"
	static let blndiuretic = "#id:chkdiuretic | #title:PO Diuretic |#type:#disclosureControl"
	
	// Advanced LHF -> Heart Failure -> Home Therapetics -> B Blocker
	static let blnBisoprolol25 = "#id:chkBisoprolol25 | #title:Carvedilol 3.125 bid | #type:#check"
	static let blnCarvedilol625 = "#id:chkCarvedilol625 | #title:Carvedilol 6.25 bid | #type:#check"
	static let blnCarvedilol125 = "#id:chkCarvedilol125 | #title:Carvedilol 12.5 bid | #type:#check"
	static let blnCarvedilol25 = "#id:chkCarvedilol25 | #title:Carvedilol 25 bid | #type:#check"
	static let blnBisoprolol5 = "#id:chkBisoprolol5 | #title:MetoproloIER 25 qd | #type:#check"
	static let blnMetoprololER50 = "#id:chkMetoprololER50 | #title:MetoproloIER 50 qd | #type:#check"
	static let blnMetoprololER100 = "#id:chkMetoprololER100 | #title:MetoproloIER 100 qd | #type:#check"
	static let blnBisoprolol10 = "#id:chkBisoprolol10 | #title:MetoproloIER 150 qd | #type:#check"
	static let blnMetoprololER200 = "#id:chkMetoprololER200 | #title:MetoproloIER 200 qd | #type:#check"
	
	// Advanced LHF -> Heart Failure -> Home Therapetics -> PO Diuretic
	static let blnfurosemide40 = "#id:chkfurosemide40 | #title:Furosemide 40 | #type:#check"
	static let blnfurosemide80 = "#id:chkfurosemide80 | #title:Furosemide 80 | #type:#check"
	static let blnfurosemide81 = "#id:chkfurosemide80Plus | #title:Furosemide 80+ | #type:#check"
	static let blnbumex1 = "#id:chkbumex1 | #title:Bumex 1 | #type:#check"
	static let blnbumex2 = "#id:chkbumex2 | #title:Bumex 2 | #type:#check"
	static let blnbumex3 = "#id:chkbumex2Plus | #title:Bumex 2+ | #type:#check"
	static let blntorsemide20 = "#id:chktorsemide20 | #title:Torsemide 20 | #type:#check"
	static let blntorsemide40 = "#id:chktorsemide40 | #title:Torsemide 40 | #type:#check"
	static let blntorsemide50 = "#id:chktorsemide50Plus | #title:Torsemide 50+ | #type:#check"
	
	// Advanced LHF -> Heart Failure -> Therapetics
	
	static let blnIVAA = "#id:chkIVAA | #title:IV Antiarryhtmic | #type:#disclosureControl"
	static let blnurgcv = "#id:chkurgcv | #title:Urgent CV | #type:#check"
	static let blndefib = "#id:chkdefib | #title:Defib | #type:#check"
	static let blnIVHT = "#id:chkIVHT | #title:IV Antihypertensive | #type:#disclosureControl"
	static let blnIVVA = "#id:chkIVVA | #title:IV Vasoactive | #type:#disclosureControl"
	static let blnIVDI = "#id:chkIVDI | #title:IV Diuretic | #type:#disclosureControl"
	static let blnNIPPV = "#id:chkNIPPV | #title:Mechanical Ventilation or NIPPV | #type:#disclosureControl"
	
	static let txtOsupp = "#id:txtOsupp | #title:O₂ Supplement % / | #type:#integerRight | #min:23 | #max:100 | #placeholder: "
	
	static let blnult = "#id:chkult | #title:Ultrafiltration | #type:#check"
	static let blnIABP = "#id:chkIABP | #title:IABP | #type:#check"
	static let blnTPM = "#id:chkTPM | #title:Temporary PM | #type:#check"
	static let blnVAD = "#id:chkVAD | #title:Vasopressors | #type:#check"
	static let blncara = "#id:chkcara | #title:On Max Tolerated B Blocker | #type:#check"
	static let blnacea = "#id:chkacea | #title:On Max Tolerated or Intolerant Acel/ARB | #type:#check"
	static let blnCID = "#id:chkCID | #title:Chronic Inotrope Dependence | #type:#check"
	static let blnIID = "#id:chkIID | #title:Intermittent Inotrope Dependence | #type:#check"
	
	// Advanced LHF -> Heart Failure -> Therapetics -> IV Antiarryhtmic
	static let blnAAcon = "#id:chkAAcon | #title:Continuous | #type:#check"
	static let blnAAbolus = "#id:chkAAbolus | #title:Bolus | #type:#check"
	static let blnAAtitr = "#id:chkAAtitr | #title:Titration | #type:#check"
	static let TxtAAmonitor = "#id:TxtAAmonitor | #title:Monitoring Frequency Q hr | #type:#integerRight | #min:1 | #max:12 | #placeholder: "
	static let blnPOAA = "#id:chkPOAA | #title:Transition to PO Antiarrhtmic | #type:#check"
	
	// Advanced LHF -> Heart Failure -> Therapetics -> IV Antihypertensive
	static let blnHTcon = "#id:chkHTcon | #title:Continuous | #type:#check"
	static let blnHTbolus = "#id:chkHTbolus | #title:Bolus | #type:#check"
	static let blnHTtitr = "#id:chkHTtitr | #title:Titration | #type:#check"
	static let TxtHTmonitor = "#id:TxtHTmonitor | #title:Monitoring Frequency Q hr | #type:#integerRight | #min:1 | #max:12 | #placeholder: "
	
	// Advanced LHF -> Heart Failure -> Therapetics -> IV Vasoactive
	static let blnVAcon = "#id:chkVAcon | #title:Continuous | #type:#check"
	static let blnVAbolus = "#id:chkVAbolus | #title:Bolus | #type:#check"
	static let blnVAtitr = "#id:chkVAtitr | #title:Titration | #type:#check"
	static let TxtVAmonitor = "#id:TxtVAmonitor | #title:Monitoring Frequency Q hr | #type:#integerRight | #min:1 | #max:12 | #placeholder: "
	
	static let blnIVNPS = "#id:chkIVNPS | #title:Continuous | #type:#check"
	static let blnIVNTG = "#id:chkIVNTG | #title:Continuous | #type:#check"
	static let blnmilrinone = "#id:chkmilrinone | #title:Continuous | #type:#check"
	
	// Advanced LHF -> Heart Failure -> Therapetics -> IV Diuretic
	static let blncon = "#id:chkcon | #title:Continuous | #type:#check"
	static let blnPODI = "#id:chkPODI | #title:Intermittent | #type:#check"
	static let Txtmonitor = "#id:Txtmonitor | #title:Monitoring Frequency Q hr | #type:#integerRight | #min:0 | #max:9999 | #placeholder: "
	
	// Advanced LHF -> Heart Failure -> Therapetics -> Mechanical Ventillation or NIPPV
	static let txtRI = "#id:txtRI | #title:Monitoring Frequency Q hr | #type:#integerRight | #min:1 | #max:12 | #placeholder: "
	
	// Echocardiography
	static let blnLVeccenticity = "#id:chkLVeccenticity| #title:E/A < 0.5 and DT 280ms | #type:#check"
	static let blnMPI = "#id:chkMPI| #title:Grade ≥ 2 Diastolic Dysfunction | #type:#check"
	static let blnEnlargedLA = "#id:chkEnlargedLA| #title:Enlarged LA | #type:#check"
	static let txtMP = "#id:txtMP| #title:LV Lateral Annulus E/E' | #type:#integerRight | #min:10 | #max:80 | #placeholder: "
	// Note: was commented in the source code.
	static let txtEF = "#id:txtEF| #title:LVEF | #type:#integerRight | #min:0 | #max:9999 | #placeholder:"
	
	// Laboratory/EKG
	static let txtGFR = "#id:txtGFR | #title:GFR ml/min/1.73 M2 |#type:#integerRight | #min:5 | #max:120 | #placeholder: "
	static let txtcreatinine = "#id:txtcreatinine | #title:Creatinine mg/dl |#type:#decimalRight | #min:0.4 | #max:20.0 | #placeholder: "
	static let txtNa = "#id:txtNa | #title:Na meq/l |#type:#integerRight | #min:99 | #max:170 | #placeholder: "
	static let txtHomo = "#id:txtHomo | #title:K meq/l |#type:#decimalRight | #min:2.0 | #max:9.0 | #placeholder: "
	static let txtplatelet = "#id:txtplatelet | #title:Platelets K/ml |#type:#integerRight | #min:1000 | #max:1000000 | #placeholder: "
	static let txtalbumin = "#id:txtalbumin | #title:Albumin g/dl |#type:#decimalRight | #min:0.9 | #max:5.0 | #placeholder: "
	static let txtPTINR = "#id:txtPTINR | #title:INR |#type:#decimalRight | #min:0.8 | #max:100.0 | #placeholder: "
	static let txtAST = "#id:txtAST | #title:AST U/ml |#type:#integerRight | #min:10 | #max:100000 | #placeholder: "
	static let txtBUN = "#id:txtBUN | #title:BUN U/dl |#type:#integerRight | #min:6 | #max:200 | #placeholder: "
	static let txthematocrit = "#id:txthematocrit | #title:Hematocrit % |#type:#integerRight | #min:9 | #max:75 | #placeholder: "
	static let txtBNP = "#id:txtBNP | #title:BNP pg/ml |#type:#integerRight | #min:10 | #max:100000 | #placeholder: "
	static let blnEKG = "#id:ekg| #title:EKG | #type:#disclosureControl"
	
	// Laboratory/EKG -> EKG
	static let txtQRS = "#id:txtQRS | #title:QRS Duration |#type:#integerRight | #min:10 | #max:300 | #placeholder: "
	static let blnLBBB = "#id:chkLBBB| #title:LBBB | #type:#check"
	static let blnLVH = "#id:chkLVH| #title:LVH | #type:#check"
	
	// RHC
	static let txtMPAP = "#id:txtMPAP | #title:MPAP, mmHg |#type:#integerRight | #min:10 | #max:70 | #placeholder: Value"
	static let txtPVR = "#id:txtPVR | #title:PVR, WU |#type:#decimalRight | #min:1 | #max:20 | #placeholder: Value"
	static let txtLVEDP = "#id:txtLVEDP | #title:LVEDP, mmHg |#type:#integerRight | #min:8 | #max:50 | #placeholder: Value"
	static let txtPCWP = "#id:txtPCWP | #title:PCWP, mmHg |#type:#integerRight | #min:3 | #max:40 | #placeholder: Value"
	static let txtCI = "#id:txtCI | #title:CI,L/min/ms2 |#type:#decimalRight | #min:0.9 | #max:5.0 | #placeholder: Value"
	static let txtRAP = "#id:txtRAP | #title:RAP, mmHg |#type:#integerRight | #min:0 | #max:40 | #placeholder: Value"
	static let txtVWA = "#id:txtVWA | #title:V wave amplitude, mmHg |#type:#integerRight | #min:0 | #max:40 | #placeholder: Value"
	static let blnTotalVWA = "#id:chkVWA | #title:No V wave on wedge tracing |#type:#check"
	static let txtPADP = "#id:txtPADP | #title:PADP, mmHg |#type:#integerRight | #min:5 | #max:40 | #placeholder: Value"
	static let txtRVEDP = "#id:txtRVEDP | #title:RVEDP, mmHg |#type:#integerRight | #min:3 | #max:20 | #placeholder: Value"
	static let txtSVRWU = "#id:txtSVR | #title:SVR |#type:#integerRight | #min:1 | #max:19 | #placeholder: Value"
	
	static let lvefInHMS = "#id:chkCHF| #title:LV EF | #type:#integerRight | #min:0 | #max:9999 | #placeholder:  "
	static let newOnsetAtrialFibrilation = "#id:chknewonsetAF| #title:Name | #type:#check"
	static let pregnancy = "#id:chkpreg| #title:Pregnancy | #type:#check"
	//	static let name = "#id:name| #title:Name | #type:#check | #type:#integerRight | #min:23 | #max:100 | #placeholder:Value "
	//	static let name = "#id:name| #title:Name | #type:#check | #type:#integerRight | #min:23 | #max:100 | #placeholder:Value "
	//	static let name = "#id:name| #title:Name | #type:#check | #type:#integerRight | #min:23 | #max:100 | #placeholder:Value "
	//	static let name = "#id:name| #title:Name | #type:#check | #type:#integerRight | #min:23 | #max:100 | #placeholder:Value "
}
