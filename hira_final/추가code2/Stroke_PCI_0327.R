
cond.ACS_I20 <- condition_visit_source("'AI20|BI20'")
cond.ACS_I21 <- condition_visit_source("'AI21|BI21'")
cond.ACS_I20_1 <- condition_visit_source("'AI20|BI20|AI21|BI21'")
cond.ACS_I20_1_4 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24'") #I24: 기타 급성 허혈심장질환

cond.ischstr <- condition_visit_source("'AI63|BI63'") #I63: 뇌경색증
cond.subhae <- condition_visit_source("'AI60|BI60'") #I60:거미막하출혈
cond.haestr_1 <- condition_visit_source("'AI61|BI61'") #I61: 뇌내출혈
cond.haestr_1_2 <- condition_visit_source("'AI61|BI61|AI62|BI62'") #I62: 기타 비외상성 두개내출혈
cond.haestr_0_2 <- condition_visit_source("'AI60|BI60|AI61|BI61|AI62|BI62'") 
cond.unspe <- condition_visit_source("'AI64|BI64'")
cond.stroke_0_3 <- condition_visit_source("'AI60|BI60|AI61|BI61|AI62|BI62|AI63|BI63'")
cond.stroke_0_4 <- condition_visit_source("'AI60|BI60|AI61|BI61|AI62|BI62|AI63|BI63|AI64|BI64'") #I64: 명시되지 않은 뇌졸중

cond.ACS_I20_1_stroke_0_4 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI60|BI60|AI61|BI61|AI62|BI62|AI63|BI63|AI64|BI64'")
cond.ACS_I20_1_4_stroke_0_4 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24|AI60|BI60|AI61|BI61|AI62|BI62|AI63|BI63|AI64|BI64'")
cond.ACS_I20_1_stroke_0_3 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI60|BI60|AI61|BI61|AI62|BI62|AI63|BI63'")
cond.ACS_I20_1_4_stroke_0_3 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24|AI60|BI60|AI61|BI61|AI62|BI62|AI63|BI63'")
cond.ACS_I20_1_ischstr <- condition_visit_source("'AI20|BI20|AI21|BI21|AI63|BI63'")
cond.ACS_I20_1_4_ischstr <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24|AI63|BI63'")
cond.ACS_I20_1_subhae <- condition_visit_source("'AI20|BI20|AI21|BI21|AI60|BI60'")
cond.ACS_I20_1_4_subhae <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24|AI60|BI60'")
cond.ACS_I20_1_haestr_1 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI61|BI61'")
cond.ACS_I20_1_4_haestr_1 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24|AI61|BI61'")
cond.ACS_I20_1_haestr_1_2 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI61|BI61|AI62|BI62'")
cond.ACS_I20_1_4_haestr_1_2 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24|AI61|BI61|AI62|BI62'")
cond.ACS_I20_1_haestr_0_2 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI60|BI60|AI61|BI61|AI62|BI62'")
cond.ACS_I20_1_4_haestr_0_2 <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24|AI60|BI60|AI61|BI61|AI62|BI62'")
cond.ACS_I20_1_unspe <- condition_visit_source("'AI20|BI20|AI21|BI21|AI64|BI64'")
cond.ACS_I20_1_4_unspe <- condition_visit_source("'AI20|BI20|AI21|BI21|AI24|BI24|AI64|BI64'")


proc.PCI <- proce_visit_source("'M6551|M6552|M6553|M6554|M6561|M6562|M6563|M6564|M6565|M6566|M6567|M6638'")
proc.CABG <- proce_visit_source("'OA649|OA647|OA641|OA640|OA648'")
proc.CABG_extra <- proce_visit_source("'OA649|OA647|OA641|OA640|OA648|O1640|O1641|O1648'") #추가한 코드임. 확인 필요.
proc.TFCA <- proce_visit_source("'HA602|HA603|HA604|HA605|M6601|M6630|M6636|M6638|S4641|S4642'")
proc.angioplasty_cerebral <- proce_visit_source("'M6593'") #M6593: Percutaneous transluminal angioplasty-cerebral
proc.angioplasty_carotid <- proce_visit_source("'M6594'") #M6594: Percutaneous Transluminal Angioplasty-Carotid
proc.angioplasty_aortic <- proce_visit_source("'M6595'") #M6595: Percutaneous Transluminal Angioplasty-Aortic
proc.angioplasty_pulmonary <- proce_visit_source("'M6596'") #M6596: Percutaneous Transluminal Angioplasty-Pulmonary
proc.angioplasty_others <- proce_visit_source("'M6597'") #M6597: Percutaneous Transluminal Angioplasty-Others
proc.angioplasty_drugs <- proce_visit_source("'M6599'") #M6599: Percutaneous Cerebral Angioplasty with Drug

#inner join _PCI
IJ_ACS_I20_PCI <- inner_join(cond.ACS_I20, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_PCI_dup <- IJ_ACS_I20_PCI[-which(duplicated(IJ_ACS_I20_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_PCI <- inner_join(cond.ACS_I21, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_PCI_dup <- IJ_ACS_I21_PCI[-which(duplicated(IJ_ACS_I21_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_PCI <- inner_join(cond.ACS_I20_1, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_PCI_dup <- IJ_ACS_I20_1_PCI[-which(duplicated(IJ_ACS_I20_1_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_PCI <- inner_join(cond.ACS_I20_1_4, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_PCI_dup <- IJ_ACS_I20_1_4_PCI[-which(duplicated(IJ_ACS_I20_1_4_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_PCI <- inner_join(cond.ischstr, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_PCI_dup <- IJ_ischstr_PCI[-which(duplicated(IJ_ischstr_PCI$VISIT_OCCURRENCE_ID)),]
IJ_subhae_PCI <- inner_join(cond.subhae, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_PCI_dup <- IJ_subhae_PCI[-which(duplicated(IJ_subhae_PCI$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_PCI <- inner_join(cond.haestr_1, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_PCI_dup <- IJ_haestr_1_PCI[-which(duplicated(IJ_haestr_1_PCI$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_PCI <- inner_join(cond.haestr_1_2, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_PCI_dup <- IJ_haestr_1_2_PCI[-which(duplicated(IJ_haestr_1_2_PCI$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_PCI <- inner_join(cond.haestr_0_2, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_PCI_dup <- IJ_haestr_0_2_PCI[-which(duplicated(IJ_haestr_0_2_PCI$VISIT_OCCURRENCE_ID)),]
IJ_unspe_PCI <- inner_join(cond.unspe, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_PCI_dup <- IJ_unspe_PCI[-which(duplicated(IJ_unspe_PCI$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_PCI <- inner_join(cond.stroke_0_3, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_PCI_dup <- IJ_stroke_0_3_PCI[-which(duplicated(IJ_stroke_0_3_PCI$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_PCI <- inner_join(cond.stroke_0_4, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_PCI_dup <- IJ_stroke_0_4_PCI[-which(duplicated(IJ_stroke_0_4_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_PCI <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_PCI_dup <- IJ_ACS_I20_1_stroke_0_4_PCI[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_PCI <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_PCI_dup <- IJ_ACS_I20_1_4_stroke_0_4_PCI[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_PCI <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_PCI_dup <- IJ_ACS_I20_1_stroke_0_3_PCI[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_PCI <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_PCI_dup <- IJ_ACS_I20_1_4_stroke_0_3_PCI[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_PCI <- inner_join(cond.ACS_I20_1_ischstr, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_PCI_dup <- IJ_ACS_I20_1_ischstr_PCI[-which(duplicated(IJ_ACS_I20_1_ischstr_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_PCI <- inner_join(cond.ACS_I20_1_4_ischstr, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_PCI_dup <- IJ_ACS_I20_1_4_ischstr_PCI[-which(duplicated(IJ_ACS_I20_1_4_ischstr_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_PCI <- inner_join(cond.ACS_I20_1_subhae, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_PCI_dup <- IJ_ACS_I20_1_subhae_PCI[-which(duplicated(IJ_ACS_I20_1_subhae_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_PCI <- inner_join(cond.ACS_I20_1_4_subhae, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_PCI_dup <- IJ_ACS_I20_1_4_subhae_PCI[-which(duplicated(IJ_ACS_I20_1_4_subhae_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_PCI <- inner_join(cond.ACS_I20_1_haestr_1, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_PCI_dup <- IJ_ACS_I20_1_haestr_1_PCI[-which(duplicated(IJ_ACS_I20_1_haestr_1_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_PCI <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_PCI_dup <- IJ_ACS_I20_1_4_haestr_1_PCI[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_PCI <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_PCI_dup <- IJ_ACS_I20_1_haestr_1_2_PCI[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_PCI <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_PCI_dup <- IJ_ACS_I20_1_4_haestr_1_2_PCI[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_PCI <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_PCI_dup <- IJ_ACS_I20_1_haestr_0_2_PCI[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_PCI <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_PCI_dup <- IJ_ACS_I20_1_4_haestr_0_2_PCI[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_PCI <- inner_join(cond.ACS_I20_1_unspe, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_PCI_dup <- IJ_ACS_I20_1_unspe_PCI[-which(duplicated(IJ_ACS_I20_1_unspe_PCI$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_PCI <- inner_join(cond.ACS_I20_1_4_unspe, proc.PCI, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_PCI_dup <- IJ_ACS_I20_1_4_unspe_PCI[-which(duplicated(IJ_ACS_I20_1_4_unspe_PCI$VISIT_OCCURRENCE_ID)),]

#inner join _CABG
IJ_ACS_I20_CABG <- inner_join(cond.ACS_I20, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_CABG_dup <- IJ_ACS_I20_CABG[-which(duplicated(IJ_ACS_I20_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_CABG <- inner_join(cond.ACS_I21, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_CABG_dup <- IJ_ACS_I21_CABG[-which(duplicated(IJ_ACS_I21_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_CABG <- inner_join(cond.ACS_I20_1, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_CABG_dup <- IJ_ACS_I20_1_CABG[-which(duplicated(IJ_ACS_I20_1_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_CABG <- inner_join(cond.ACS_I20_1_4, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_CABG_dup <- IJ_ACS_I20_1_4_CABG[-which(duplicated(IJ_ACS_I20_1_4_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_CABG <- inner_join(cond.ischstr, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_CABG_dup <- IJ_ischstr_CABG[-which(duplicated(IJ_ischstr_CABG$VISIT_OCCURRENCE_ID)),]
IJ_subhae_CABG <- inner_join(cond.subhae, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_CABG_dup <- IJ_subhae_CABG[-which(duplicated(IJ_subhae_CABG$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_CABG <- inner_join(cond.haestr_1, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_CABG_dup <- IJ_haestr_1_CABG[-which(duplicated(IJ_haestr_1_CABG$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_CABG <- inner_join(cond.haestr_1_2, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_CABG_dup <- IJ_haestr_1_2_CABG[-which(duplicated(IJ_haestr_1_2_CABG$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_CABG <- inner_join(cond.haestr_0_2, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_CABG_dup <- IJ_haestr_0_2_CABG[-which(duplicated(IJ_haestr_0_2_CABG$VISIT_OCCURRENCE_ID)),]
IJ_unspe_CABG <- inner_join(cond.unspe, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_CABG_dup <- IJ_unspe_CABG[-which(duplicated(IJ_unspe_CABG$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_CABG <- inner_join(cond.stroke_0_3, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_CABG_dup <- IJ_stroke_0_3_CABG[-which(duplicated(IJ_stroke_0_3_CABG$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_CABG <- inner_join(cond.stroke_0_4, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_CABG_dup <- IJ_stroke_0_4_CABG[-which(duplicated(IJ_stroke_0_4_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_CABG <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_CABG_dup <- IJ_ACS_I20_1_stroke_0_4_CABG[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_CABG <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_CABG_dup <- IJ_ACS_I20_1_4_stroke_0_4_CABG[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_CABG <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_CABG_dup <- IJ_ACS_I20_1_stroke_0_3_CABG[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_CABG <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_CABG_dup <- IJ_ACS_I20_1_4_stroke_0_3_CABG[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_CABG <- inner_join(cond.ACS_I20_1_ischstr, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_CABG_dup <- IJ_ACS_I20_1_ischstr_CABG[-which(duplicated(IJ_ACS_I20_1_ischstr_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_CABG <- inner_join(cond.ACS_I20_1_4_ischstr, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_CABG_dup <- IJ_ACS_I20_1_4_ischstr_CABG[-which(duplicated(IJ_ACS_I20_1_4_ischstr_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_CABG <- inner_join(cond.ACS_I20_1_subhae, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_CABG_dup <- IJ_ACS_I20_1_subhae_CABG[-which(duplicated(IJ_ACS_I20_1_subhae_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_CABG <- inner_join(cond.ACS_I20_1_4_subhae, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_CABG_dup <- IJ_ACS_I20_1_4_subhae_CABG[-which(duplicated(IJ_ACS_I20_1_4_subhae_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_CABG <- inner_join(cond.ACS_I20_1_haestr_1, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_CABG_dup <- IJ_ACS_I20_1_haestr_1_CABG[-which(duplicated(IJ_ACS_I20_1_haestr_1_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_CABG <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_CABG_dup <- IJ_ACS_I20_1_4_haestr_1_CABG[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_CABG <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_CABG_dup <- IJ_ACS_I20_1_haestr_1_2_CABG[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_CABG <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_CABG_dup <- IJ_ACS_I20_1_4_haestr_1_2_CABG[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_CABG <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_CABG_dup <- IJ_ACS_I20_1_haestr_0_2_CABG[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_CABG <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_CABG_dup <- IJ_ACS_I20_1_4_haestr_0_2_CABG[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_CABG <- inner_join(cond.ACS_I20_1_unspe, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_CABG_dup <- IJ_ACS_I20_1_unspe_CABG[-which(duplicated(IJ_ACS_I20_1_unspe_CABG$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_CABG <- inner_join(cond.ACS_I20_1_4_unspe, proc.CABG, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_CABG_dup <- IJ_ACS_I20_1_4_unspe_CABG[-which(duplicated(IJ_ACS_I20_1_4_unspe_CABG$VISIT_OCCURRENCE_ID)),]

#inner join _CABG_extra
IJ_ACS_I20_CABG_extra <- inner_join(cond.ACS_I20, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_CABG_extra_dup <- IJ_ACS_I20_CABG_extra[-which(duplicated(IJ_ACS_I20_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_CABG_extra <- inner_join(cond.ACS_I21, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_CABG_extra_dup <- IJ_ACS_I21_CABG_extra[-which(duplicated(IJ_ACS_I21_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_CABG_extra <- inner_join(cond.ACS_I20_1, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_CABG_extra_dup <- IJ_ACS_I20_1_CABG_extra[-which(duplicated(IJ_ACS_I20_1_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_CABG_extra <- inner_join(cond.ACS_I20_1_4, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_CABG_extra_dup <- IJ_ACS_I20_1_4_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_CABG_extra <- inner_join(cond.ischstr, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_CABG_extra_dup <- IJ_ischstr_CABG_extra[-which(duplicated(IJ_ischstr_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_subhae_CABG_extra <- inner_join(cond.subhae, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_CABG_extra_dup <- IJ_subhae_CABG_extra[-which(duplicated(IJ_subhae_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_CABG_extra <- inner_join(cond.haestr_1, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_CABG_extra_dup <- IJ_haestr_1_CABG_extra[-which(duplicated(IJ_haestr_1_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_CABG_extra <- inner_join(cond.haestr_1_2, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_CABG_extra_dup <- IJ_haestr_1_2_CABG_extra[-which(duplicated(IJ_haestr_1_2_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_CABG_extra <- inner_join(cond.haestr_0_2, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_CABG_extra_dup <- IJ_haestr_0_2_CABG_extra[-which(duplicated(IJ_haestr_0_2_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_unspe_CABG_extra <- inner_join(cond.unspe, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_CABG_extra_dup <- IJ_unspe_CABG_extra[-which(duplicated(IJ_unspe_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_CABG_extra <- inner_join(cond.stroke_0_3, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_CABG_extra_dup <- IJ_stroke_0_3_CABG_extra[-which(duplicated(IJ_stroke_0_3_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_CABG_extra <- inner_join(cond.stroke_0_4, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_CABG_extra_dup <- IJ_stroke_0_4_CABG_extra[-which(duplicated(IJ_stroke_0_4_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_CABG_extra <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_CABG_extra_dup <- IJ_ACS_I20_1_stroke_0_4_CABG_extra[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_CABG_extra <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_CABG_extra_dup <- IJ_ACS_I20_1_4_stroke_0_4_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_CABG_extra <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_CABG_extra_dup <- IJ_ACS_I20_1_stroke_0_3_CABG_extra[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_CABG_extra <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_CABG_extra_dup <- IJ_ACS_I20_1_4_stroke_0_3_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_CABG_extra <- inner_join(cond.ACS_I20_1_ischstr, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_CABG_extra_dup <- IJ_ACS_I20_1_ischstr_CABG_extra[-which(duplicated(IJ_ACS_I20_1_ischstr_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_CABG_extra <- inner_join(cond.ACS_I20_1_4_ischstr, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_CABG_extra_dup <- IJ_ACS_I20_1_4_ischstr_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_ischstr_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_CABG_extra <- inner_join(cond.ACS_I20_1_subhae, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_CABG_extra_dup <- IJ_ACS_I20_1_subhae_CABG_extra[-which(duplicated(IJ_ACS_I20_1_subhae_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_CABG_extra <- inner_join(cond.ACS_I20_1_4_subhae, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_CABG_extra_dup <- IJ_ACS_I20_1_4_subhae_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_subhae_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_CABG_extra <- inner_join(cond.ACS_I20_1_haestr_1, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_CABG_extra_dup <- IJ_ACS_I20_1_haestr_1_CABG_extra[-which(duplicated(IJ_ACS_I20_1_haestr_1_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_CABG_extra <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_CABG_extra_dup <- IJ_ACS_I20_1_4_haestr_1_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_CABG_extra <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_CABG_extra_dup <- IJ_ACS_I20_1_haestr_1_2_CABG_extra[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_CABG_extra <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_CABG_extra_dup <- IJ_ACS_I20_1_4_haestr_1_2_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_CABG_extra <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_CABG_extra_dup <- IJ_ACS_I20_1_haestr_0_2_CABG_extra[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_CABG_extra <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_CABG_extra_dup <- IJ_ACS_I20_1_4_haestr_0_2_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_CABG_extra <- inner_join(cond.ACS_I20_1_unspe, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_CABG_extra_dup <- IJ_ACS_I20_1_unspe_CABG_extra[-which(duplicated(IJ_ACS_I20_1_unspe_CABG_extra$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_CABG_extra <- inner_join(cond.ACS_I20_1_4_unspe, proc.CABG_extra, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_CABG_extra_dup <- IJ_ACS_I20_1_4_unspe_CABG_extra[-which(duplicated(IJ_ACS_I20_1_4_unspe_CABG_extra$VISIT_OCCURRENCE_ID)),]


#inner join _TFCA
IJ_ACS_I20_TFCA <- inner_join(cond.ACS_I20, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_TFCA_dup <- IJ_ACS_I20_TFCA[-which(duplicated(IJ_ACS_I20_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_TFCA <- inner_join(cond.ACS_I21, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_TFCA_dup <- IJ_ACS_I21_TFCA[-which(duplicated(IJ_ACS_I21_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_TFCA <- inner_join(cond.ACS_I20_1, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_TFCA_dup <- IJ_ACS_I20_1_TFCA[-which(duplicated(IJ_ACS_I20_1_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_TFCA <- inner_join(cond.ACS_I20_1_4, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_TFCA_dup <- IJ_ACS_I20_1_4_TFCA[-which(duplicated(IJ_ACS_I20_1_4_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_TFCA <- inner_join(cond.ischstr, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_TFCA_dup <- IJ_ischstr_TFCA[-which(duplicated(IJ_ischstr_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_subhae_TFCA <- inner_join(cond.subhae, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_TFCA_dup <- IJ_subhae_TFCA[-which(duplicated(IJ_subhae_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_TFCA <- inner_join(cond.haestr_1, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_TFCA_dup <- IJ_haestr_1_TFCA[-which(duplicated(IJ_haestr_1_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_TFCA <- inner_join(cond.haestr_1_2, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_TFCA_dup <- IJ_haestr_1_2_TFCA[-which(duplicated(IJ_haestr_1_2_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_TFCA <- inner_join(cond.haestr_0_2, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_TFCA_dup <- IJ_haestr_0_2_TFCA[-which(duplicated(IJ_haestr_0_2_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_unspe_TFCA <- inner_join(cond.unspe, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_TFCA_dup <- IJ_unspe_TFCA[-which(duplicated(IJ_unspe_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_TFCA <- inner_join(cond.stroke_0_3, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_TFCA_dup <- IJ_stroke_0_3_TFCA[-which(duplicated(IJ_stroke_0_3_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_TFCA <- inner_join(cond.stroke_0_4, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_TFCA_dup <- IJ_stroke_0_4_TFCA[-which(duplicated(IJ_stroke_0_4_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_TFCA <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_TFCA_dup <- IJ_ACS_I20_1_stroke_0_4_TFCA[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_TFCA <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_TFCA_dup <- IJ_ACS_I20_1_4_stroke_0_4_TFCA[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_TFCA <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_TFCA_dup <- IJ_ACS_I20_1_stroke_0_3_TFCA[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_TFCA <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_TFCA_dup <- IJ_ACS_I20_1_4_stroke_0_3_TFCA[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_TFCA <- inner_join(cond.ACS_I20_1_ischstr, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_TFCA_dup <- IJ_ACS_I20_1_ischstr_TFCA[-which(duplicated(IJ_ACS_I20_1_ischstr_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_TFCA <- inner_join(cond.ACS_I20_1_4_ischstr, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_TFCA_dup <- IJ_ACS_I20_1_4_ischstr_TFCA[-which(duplicated(IJ_ACS_I20_1_4_ischstr_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_TFCA <- inner_join(cond.ACS_I20_1_subhae, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_TFCA_dup <- IJ_ACS_I20_1_subhae_TFCA[-which(duplicated(IJ_ACS_I20_1_subhae_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_TFCA <- inner_join(cond.ACS_I20_1_4_subhae, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_TFCA_dup <- IJ_ACS_I20_1_4_subhae_TFCA[-which(duplicated(IJ_ACS_I20_1_4_subhae_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_TFCA <- inner_join(cond.ACS_I20_1_haestr_1, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_TFCA_dup <- IJ_ACS_I20_1_haestr_1_TFCA[-which(duplicated(IJ_ACS_I20_1_haestr_1_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_TFCA <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_TFCA_dup <- IJ_ACS_I20_1_4_haestr_1_TFCA[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_TFCA <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_TFCA_dup <- IJ_ACS_I20_1_haestr_1_2_TFCA[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_TFCA <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_TFCA_dup <- IJ_ACS_I20_1_4_haestr_1_2_TFCA[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_TFCA <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_TFCA_dup <- IJ_ACS_I20_1_haestr_0_2_TFCA[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_TFCA <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_TFCA_dup <- IJ_ACS_I20_1_4_haestr_0_2_TFCA[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_TFCA <- inner_join(cond.ACS_I20_1_unspe, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_TFCA_dup <- IJ_ACS_I20_1_unspe_TFCA[-which(duplicated(IJ_ACS_I20_1_unspe_TFCA$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_TFCA <- inner_join(cond.ACS_I20_1_4_unspe, proc.TFCA, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_TFCA_dup <- IJ_ACS_I20_1_4_unspe_TFCA[-which(duplicated(IJ_ACS_I20_1_4_unspe_TFCA$VISIT_OCCURRENCE_ID)),]

#inner join _angioplasty_cerebral
IJ_ACS_I20_angioplasty_cerebral <- inner_join(cond.ACS_I20, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_angioplasty_cerebral_dup <- IJ_ACS_I20_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_angioplasty_cerebral <- inner_join(cond.ACS_I21, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_angioplasty_cerebral_dup <- IJ_ACS_I21_angioplasty_cerebral[-which(duplicated(IJ_ACS_I21_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_angioplasty_cerebral <- inner_join(cond.ACS_I20_1, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_angioplasty_cerebral_dup <- IJ_ACS_I20_1_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_angioplasty_cerebral <- inner_join(cond.ischstr, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_angioplasty_cerebral_dup <- IJ_ischstr_angioplasty_cerebral[-which(duplicated(IJ_ischstr_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_subhae_angioplasty_cerebral <- inner_join(cond.subhae, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_angioplasty_cerebral_dup <- IJ_subhae_angioplasty_cerebral[-which(duplicated(IJ_subhae_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_angioplasty_cerebral <- inner_join(cond.haestr_1, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_angioplasty_cerebral_dup <- IJ_haestr_1_angioplasty_cerebral[-which(duplicated(IJ_haestr_1_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_angioplasty_cerebral <- inner_join(cond.haestr_1_2, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_angioplasty_cerebral_dup <- IJ_haestr_1_2_angioplasty_cerebral[-which(duplicated(IJ_haestr_1_2_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_angioplasty_cerebral <- inner_join(cond.haestr_0_2, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_angioplasty_cerebral_dup <- IJ_haestr_0_2_angioplasty_cerebral[-which(duplicated(IJ_haestr_0_2_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_unspe_angioplasty_cerebral <- inner_join(cond.unspe, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_angioplasty_cerebral_dup <- IJ_unspe_angioplasty_cerebral[-which(duplicated(IJ_unspe_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_angioplasty_cerebral <- inner_join(cond.stroke_0_3, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_angioplasty_cerebral_dup <- IJ_stroke_0_3_angioplasty_cerebral[-which(duplicated(IJ_stroke_0_3_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_angioplasty_cerebral <- inner_join(cond.stroke_0_4, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_angioplasty_cerebral_dup <- IJ_stroke_0_4_angioplasty_cerebral[-which(duplicated(IJ_stroke_0_4_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_angioplasty_cerebral_dup <- IJ_ACS_I20_1_stroke_0_4_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_angioplasty_cerebral_dup <- IJ_ACS_I20_1_stroke_0_3_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_ischstr, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_angioplasty_cerebral_dup <- IJ_ACS_I20_1_ischstr_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_ischstr_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4_ischstr, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_ischstr_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_ischstr_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_subhae, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_angioplasty_cerebral_dup <- IJ_ACS_I20_1_subhae_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_subhae_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4_subhae, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_subhae_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_subhae_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_haestr_1, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_angioplasty_cerebral_dup <- IJ_ACS_I20_1_haestr_1_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_haestr_1_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_haestr_1_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_angioplasty_cerebral_dup <- IJ_ACS_I20_1_haestr_1_2_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_angioplasty_cerebral_dup <- IJ_ACS_I20_1_haestr_0_2_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_unspe, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_angioplasty_cerebral_dup <- IJ_ACS_I20_1_unspe_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_unspe_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_angioplasty_cerebral <- inner_join(cond.ACS_I20_1_4_unspe, proc.angioplasty_cerebral, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_angioplasty_cerebral_dup <- IJ_ACS_I20_1_4_unspe_angioplasty_cerebral[-which(duplicated(IJ_ACS_I20_1_4_unspe_angioplasty_cerebral$VISIT_OCCURRENCE_ID)),]

#inner join _angioplasty_carotid
IJ_ACS_I20_angioplasty_carotid <- inner_join(cond.ACS_I20, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_angioplasty_carotid_dup <- IJ_ACS_I20_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_angioplasty_carotid <- inner_join(cond.ACS_I21, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_angioplasty_carotid_dup <- IJ_ACS_I21_angioplasty_carotid[-which(duplicated(IJ_ACS_I21_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_angioplasty_carotid <- inner_join(cond.ACS_I20_1, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_angioplasty_carotid_dup <- IJ_ACS_I20_1_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_angioplasty_carotid <- inner_join(cond.ischstr, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_angioplasty_carotid_dup <- IJ_ischstr_angioplasty_carotid[-which(duplicated(IJ_ischstr_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_subhae_angioplasty_carotid <- inner_join(cond.subhae, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_angioplasty_carotid_dup <- IJ_subhae_angioplasty_carotid[-which(duplicated(IJ_subhae_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_angioplasty_carotid <- inner_join(cond.haestr_1, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_angioplasty_carotid_dup <- IJ_haestr_1_angioplasty_carotid[-which(duplicated(IJ_haestr_1_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_angioplasty_carotid <- inner_join(cond.haestr_1_2, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_angioplasty_carotid_dup <- IJ_haestr_1_2_angioplasty_carotid[-which(duplicated(IJ_haestr_1_2_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_angioplasty_carotid <- inner_join(cond.haestr_0_2, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_angioplasty_carotid_dup <- IJ_haestr_0_2_angioplasty_carotid[-which(duplicated(IJ_haestr_0_2_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_unspe_angioplasty_carotid <- inner_join(cond.unspe, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_angioplasty_carotid_dup <- IJ_unspe_angioplasty_carotid[-which(duplicated(IJ_unspe_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_angioplasty_carotid <- inner_join(cond.stroke_0_3, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_angioplasty_carotid_dup <- IJ_stroke_0_3_angioplasty_carotid[-which(duplicated(IJ_stroke_0_3_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_angioplasty_carotid <- inner_join(cond.stroke_0_4, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_angioplasty_carotid_dup <- IJ_stroke_0_4_angioplasty_carotid[-which(duplicated(IJ_stroke_0_4_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_angioplasty_carotid <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_angioplasty_carotid_dup <- IJ_ACS_I20_1_stroke_0_4_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_angioplasty_carotid <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_angioplasty_carotid_dup <- IJ_ACS_I20_1_stroke_0_3_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_angioplasty_carotid <- inner_join(cond.ACS_I20_1_ischstr, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_angioplasty_carotid_dup <- IJ_ACS_I20_1_ischstr_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_ischstr_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4_ischstr, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_ischstr_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_ischstr_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_angioplasty_carotid <- inner_join(cond.ACS_I20_1_subhae, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_angioplasty_carotid_dup <- IJ_ACS_I20_1_subhae_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_subhae_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4_subhae, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_subhae_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_subhae_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_angioplasty_carotid <- inner_join(cond.ACS_I20_1_haestr_1, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_angioplasty_carotid_dup <- IJ_ACS_I20_1_haestr_1_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_haestr_1_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_haestr_1_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_angioplasty_carotid <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_angioplasty_carotid_dup <- IJ_ACS_I20_1_haestr_1_2_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_angioplasty_carotid <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_angioplasty_carotid_dup <- IJ_ACS_I20_1_haestr_0_2_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_angioplasty_carotid <- inner_join(cond.ACS_I20_1_unspe, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_angioplasty_carotid_dup <- IJ_ACS_I20_1_unspe_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_unspe_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_angioplasty_carotid <- inner_join(cond.ACS_I20_1_4_unspe, proc.angioplasty_carotid, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_angioplasty_carotid_dup <- IJ_ACS_I20_1_4_unspe_angioplasty_carotid[-which(duplicated(IJ_ACS_I20_1_4_unspe_angioplasty_carotid$VISIT_OCCURRENCE_ID)),]


#inner join _angioplasty_aortic
IJ_ACS_I20_angioplasty_aortic <- inner_join(cond.ACS_I20, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_angioplasty_aortic_dup <- IJ_ACS_I20_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_angioplasty_aortic <- inner_join(cond.ACS_I21, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_angioplasty_aortic_dup <- IJ_ACS_I21_angioplasty_aortic[-which(duplicated(IJ_ACS_I21_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_angioplasty_aortic <- inner_join(cond.ACS_I20_1, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_angioplasty_aortic_dup <- IJ_ACS_I20_1_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_angioplasty_aortic <- inner_join(cond.ischstr, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_angioplasty_aortic_dup <- IJ_ischstr_angioplasty_aortic[-which(duplicated(IJ_ischstr_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_subhae_angioplasty_aortic <- inner_join(cond.subhae, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_angioplasty_aortic_dup <- IJ_subhae_angioplasty_aortic[-which(duplicated(IJ_subhae_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_angioplasty_aortic <- inner_join(cond.haestr_1, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_angioplasty_aortic_dup <- IJ_haestr_1_angioplasty_aortic[-which(duplicated(IJ_haestr_1_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_angioplasty_aortic <- inner_join(cond.haestr_1_2, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_angioplasty_aortic_dup <- IJ_haestr_1_2_angioplasty_aortic[-which(duplicated(IJ_haestr_1_2_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_angioplasty_aortic <- inner_join(cond.haestr_0_2, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_angioplasty_aortic_dup <- IJ_haestr_0_2_angioplasty_aortic[-which(duplicated(IJ_haestr_0_2_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_unspe_angioplasty_aortic <- inner_join(cond.unspe, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_angioplasty_aortic_dup <- IJ_unspe_angioplasty_aortic[-which(duplicated(IJ_unspe_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_angioplasty_aortic <- inner_join(cond.stroke_0_3, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_angioplasty_aortic_dup <- IJ_stroke_0_3_angioplasty_aortic[-which(duplicated(IJ_stroke_0_3_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_angioplasty_aortic <- inner_join(cond.stroke_0_4, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_angioplasty_aortic_dup <- IJ_stroke_0_4_angioplasty_aortic[-which(duplicated(IJ_stroke_0_4_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_angioplasty_aortic <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_angioplasty_aortic_dup <- IJ_ACS_I20_1_stroke_0_4_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_angioplasty_aortic <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_angioplasty_aortic_dup <- IJ_ACS_I20_1_stroke_0_3_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_angioplasty_aortic <- inner_join(cond.ACS_I20_1_ischstr, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_angioplasty_aortic_dup <- IJ_ACS_I20_1_ischstr_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_ischstr_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4_ischstr, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_ischstr_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_ischstr_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_angioplasty_aortic <- inner_join(cond.ACS_I20_1_subhae, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_angioplasty_aortic_dup <- IJ_ACS_I20_1_subhae_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_subhae_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4_subhae, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_subhae_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_subhae_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_angioplasty_aortic <- inner_join(cond.ACS_I20_1_haestr_1, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_angioplasty_aortic_dup <- IJ_ACS_I20_1_haestr_1_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_haestr_1_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_haestr_1_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_angioplasty_aortic <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_angioplasty_aortic_dup <- IJ_ACS_I20_1_haestr_1_2_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_angioplasty_aortic <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_angioplasty_aortic_dup <- IJ_ACS_I20_1_haestr_0_2_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_angioplasty_aortic <- inner_join(cond.ACS_I20_1_unspe, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_angioplasty_aortic_dup <- IJ_ACS_I20_1_unspe_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_unspe_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_angioplasty_aortic <- inner_join(cond.ACS_I20_1_4_unspe, proc.angioplasty_aortic, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_angioplasty_aortic_dup <- IJ_ACS_I20_1_4_unspe_angioplasty_aortic[-which(duplicated(IJ_ACS_I20_1_4_unspe_angioplasty_aortic$VISIT_OCCURRENCE_ID)),]


#inner join _angioplasty_pulmonary
IJ_ACS_I20_angioplasty_pulmonary <- inner_join(cond.ACS_I20, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_angioplasty_pulmonary_dup <- IJ_ACS_I20_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_angioplasty_pulmonary <- inner_join(cond.ACS_I21, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_angioplasty_pulmonary_dup <- IJ_ACS_I21_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I21_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_angioplasty_pulmonary <- inner_join(cond.ischstr, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_angioplasty_pulmonary_dup <- IJ_ischstr_angioplasty_pulmonary[-which(duplicated(IJ_ischstr_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_subhae_angioplasty_pulmonary <- inner_join(cond.subhae, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_angioplasty_pulmonary_dup <- IJ_subhae_angioplasty_pulmonary[-which(duplicated(IJ_subhae_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_angioplasty_pulmonary <- inner_join(cond.haestr_1, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_angioplasty_pulmonary_dup <- IJ_haestr_1_angioplasty_pulmonary[-which(duplicated(IJ_haestr_1_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_angioplasty_pulmonary <- inner_join(cond.haestr_1_2, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_angioplasty_pulmonary_dup <- IJ_haestr_1_2_angioplasty_pulmonary[-which(duplicated(IJ_haestr_1_2_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_angioplasty_pulmonary <- inner_join(cond.haestr_0_2, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_angioplasty_pulmonary_dup <- IJ_haestr_0_2_angioplasty_pulmonary[-which(duplicated(IJ_haestr_0_2_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_unspe_angioplasty_pulmonary <- inner_join(cond.unspe, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_angioplasty_pulmonary_dup <- IJ_unspe_angioplasty_pulmonary[-which(duplicated(IJ_unspe_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_angioplasty_pulmonary <- inner_join(cond.stroke_0_3, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_angioplasty_pulmonary_dup <- IJ_stroke_0_3_angioplasty_pulmonary[-which(duplicated(IJ_stroke_0_3_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_angioplasty_pulmonary <- inner_join(cond.stroke_0_4, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_angioplasty_pulmonary_dup <- IJ_stroke_0_4_angioplasty_pulmonary[-which(duplicated(IJ_stroke_0_4_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_stroke_0_4_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_stroke_0_3_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_ischstr, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_ischstr_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_ischstr_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4_ischstr, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_ischstr_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_ischstr_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_subhae, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_subhae_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_subhae_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4_subhae, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_subhae_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_subhae_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_haestr_1, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_haestr_1_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_haestr_1_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_haestr_1_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_haestr_1_2_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_haestr_0_2_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_unspe, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_unspe_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_unspe_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_angioplasty_pulmonary <- inner_join(cond.ACS_I20_1_4_unspe, proc.angioplasty_pulmonary, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_angioplasty_pulmonary_dup <- IJ_ACS_I20_1_4_unspe_angioplasty_pulmonary[-which(duplicated(IJ_ACS_I20_1_4_unspe_angioplasty_pulmonary$VISIT_OCCURRENCE_ID)),]

#inner join _angioplasty_others
IJ_ACS_I20_angioplasty_others <- inner_join(cond.ACS_I20, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_angioplasty_others_dup <- IJ_ACS_I20_angioplasty_others[-which(duplicated(IJ_ACS_I20_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_angioplasty_others <- inner_join(cond.ACS_I21, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_angioplasty_others_dup <- IJ_ACS_I21_angioplasty_others[-which(duplicated(IJ_ACS_I21_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_angioplasty_others <- inner_join(cond.ACS_I20_1, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_angioplasty_others_dup <- IJ_ACS_I20_1_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_angioplasty_others <- inner_join(cond.ACS_I20_1_4, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_angioplasty_others_dup <- IJ_ACS_I20_1_4_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_angioplasty_others <- inner_join(cond.ischstr, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_angioplasty_others_dup <- IJ_ischstr_angioplasty_others[-which(duplicated(IJ_ischstr_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_subhae_angioplasty_others <- inner_join(cond.subhae, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_angioplasty_others_dup <- IJ_subhae_angioplasty_others[-which(duplicated(IJ_subhae_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_angioplasty_others <- inner_join(cond.haestr_1, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_angioplasty_others_dup <- IJ_haestr_1_angioplasty_others[-which(duplicated(IJ_haestr_1_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_angioplasty_others <- inner_join(cond.haestr_1_2, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_angioplasty_others_dup <- IJ_haestr_1_2_angioplasty_others[-which(duplicated(IJ_haestr_1_2_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_angioplasty_others <- inner_join(cond.haestr_0_2, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_angioplasty_others_dup <- IJ_haestr_0_2_angioplasty_others[-which(duplicated(IJ_haestr_0_2_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_unspe_angioplasty_others <- inner_join(cond.unspe, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_angioplasty_others_dup <- IJ_unspe_angioplasty_others[-which(duplicated(IJ_unspe_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_angioplasty_others <- inner_join(cond.stroke_0_3, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_angioplasty_others_dup <- IJ_stroke_0_3_angioplasty_others[-which(duplicated(IJ_stroke_0_3_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_angioplasty_others <- inner_join(cond.stroke_0_4, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_angioplasty_others_dup <- IJ_stroke_0_4_angioplasty_others[-which(duplicated(IJ_stroke_0_4_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_angioplasty_others <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_angioplasty_others_dup <- IJ_ACS_I20_1_stroke_0_4_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_others <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_others_dup <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_angioplasty_others <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_angioplasty_others_dup <- IJ_ACS_I20_1_stroke_0_3_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_others <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_others_dup <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_angioplasty_others <- inner_join(cond.ACS_I20_1_ischstr, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_angioplasty_others_dup <- IJ_ACS_I20_1_ischstr_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_ischstr_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_angioplasty_others <- inner_join(cond.ACS_I20_1_4_ischstr, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_angioplasty_others_dup <- IJ_ACS_I20_1_4_ischstr_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_ischstr_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_angioplasty_others <- inner_join(cond.ACS_I20_1_subhae, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_angioplasty_others_dup <- IJ_ACS_I20_1_subhae_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_subhae_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_angioplasty_others <- inner_join(cond.ACS_I20_1_4_subhae, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_angioplasty_others_dup <- IJ_ACS_I20_1_4_subhae_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_subhae_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_angioplasty_others <- inner_join(cond.ACS_I20_1_haestr_1, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_angioplasty_others_dup <- IJ_ACS_I20_1_haestr_1_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_haestr_1_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_angioplasty_others <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_angioplasty_others_dup <- IJ_ACS_I20_1_4_haestr_1_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_angioplasty_others <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_angioplasty_others_dup <- IJ_ACS_I20_1_haestr_1_2_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_others <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_others_dup <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_angioplasty_others <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_angioplasty_others_dup <- IJ_ACS_I20_1_haestr_0_2_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_others <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_others_dup <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_angioplasty_others <- inner_join(cond.ACS_I20_1_unspe, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_angioplasty_others_dup <- IJ_ACS_I20_1_unspe_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_unspe_angioplasty_others$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_angioplasty_others <- inner_join(cond.ACS_I20_1_4_unspe, proc.angioplasty_others, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_angioplasty_others_dup <- IJ_ACS_I20_1_4_unspe_angioplasty_others[-which(duplicated(IJ_ACS_I20_1_4_unspe_angioplasty_others$VISIT_OCCURRENCE_ID)),]

#inner join _angioplasty_drugs
IJ_ACS_I20_angioplasty_drugs <- inner_join(cond.ACS_I20, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_angioplasty_drugs_dup <- IJ_ACS_I20_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I21_angioplasty_drugs <- inner_join(cond.ACS_I21, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I21_angioplasty_drugs_dup <- IJ_ACS_I21_angioplasty_drugs[-which(duplicated(IJ_ACS_I21_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_angioplasty_drugs <- inner_join(cond.ACS_I20_1, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_angioplasty_drugs_dup <- IJ_ACS_I20_1_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ischstr_angioplasty_drugs <- inner_join(cond.ischstr, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ischstr_angioplasty_drugs_dup <- IJ_ischstr_angioplasty_drugs[-which(duplicated(IJ_ischstr_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_subhae_angioplasty_drugs <- inner_join(cond.subhae, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_subhae_angioplasty_drugs_dup <- IJ_subhae_angioplasty_drugs[-which(duplicated(IJ_subhae_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_angioplasty_drugs <- inner_join(cond.haestr_1, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_angioplasty_drugs_dup <- IJ_haestr_1_angioplasty_drugs[-which(duplicated(IJ_haestr_1_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_haestr_1_2_angioplasty_drugs <- inner_join(cond.haestr_1_2, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_1_2_angioplasty_drugs_dup <- IJ_haestr_1_2_angioplasty_drugs[-which(duplicated(IJ_haestr_1_2_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_haestr_0_2_angioplasty_drugs <- inner_join(cond.haestr_0_2, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_haestr_0_2_angioplasty_drugs_dup <- IJ_haestr_0_2_angioplasty_drugs[-which(duplicated(IJ_haestr_0_2_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_unspe_angioplasty_drugs <- inner_join(cond.unspe, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_unspe_angioplasty_drugs_dup <- IJ_unspe_angioplasty_drugs[-which(duplicated(IJ_unspe_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_3_angioplasty_drugs <- inner_join(cond.stroke_0_3, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_3_angioplasty_drugs_dup <- IJ_stroke_0_3_angioplasty_drugs[-which(duplicated(IJ_stroke_0_3_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_stroke_0_4_angioplasty_drugs <- inner_join(cond.stroke_0_4, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_stroke_0_4_angioplasty_drugs_dup <- IJ_stroke_0_4_angioplasty_drugs[-which(duplicated(IJ_stroke_0_4_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_4_angioplasty_drugs <- inner_join(cond.ACS_I20_1_stroke_0_4, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_4_angioplasty_drugs_dup <- IJ_ACS_I20_1_stroke_0_4_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_stroke_0_4_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4_stroke_0_4, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_4_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_4_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_stroke_0_3_angioplasty_drugs <- inner_join(cond.ACS_I20_1_stroke_0_3, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_stroke_0_3_angioplasty_drugs_dup <- IJ_ACS_I20_1_stroke_0_3_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_stroke_0_3_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4_stroke_0_3, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_stroke_0_3_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_stroke_0_3_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_ischstr_angioplasty_drugs <- inner_join(cond.ACS_I20_1_ischstr, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_ischstr_angioplasty_drugs_dup <- IJ_ACS_I20_1_ischstr_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_ischstr_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_ischstr_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4_ischstr, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_ischstr_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_ischstr_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_ischstr_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_subhae_angioplasty_drugs <- inner_join(cond.ACS_I20_1_subhae, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_subhae_angioplasty_drugs_dup <- IJ_ACS_I20_1_subhae_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_subhae_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_subhae_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4_subhae, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_subhae_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_subhae_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_subhae_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_angioplasty_drugs <- inner_join(cond.ACS_I20_1_haestr_1, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_angioplasty_drugs_dup <- IJ_ACS_I20_1_haestr_1_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_haestr_1_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4_haestr_1, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_haestr_1_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_1_2_angioplasty_drugs <- inner_join(cond.ACS_I20_1_haestr_1_2, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_1_2_angioplasty_drugs_dup <- IJ_ACS_I20_1_haestr_1_2_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_haestr_1_2_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4_haestr_1_2, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_1_2_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_haestr_1_2_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_haestr_0_2_angioplasty_drugs <- inner_join(cond.ACS_I20_1_haestr_0_2, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_haestr_0_2_angioplasty_drugs_dup <- IJ_ACS_I20_1_haestr_0_2_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_haestr_0_2_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4_haestr_0_2, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_haestr_0_2_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_haestr_0_2_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_unspe_angioplasty_drugs <- inner_join(cond.ACS_I20_1_unspe, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_unspe_angioplasty_drugs_dup <- IJ_ACS_I20_1_unspe_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_unspe_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]
IJ_ACS_I20_1_4_unspe_angioplasty_drugs <- inner_join(cond.ACS_I20_1_4_unspe, proc.angioplasty_drugs, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
IJ_ACS_I20_1_4_unspe_angioplasty_drugs_dup <- IJ_ACS_I20_1_4_unspe_angioplasty_drugs[-which(duplicated(IJ_ACS_I20_1_4_unspe_angioplasty_drugs$VISIT_OCCURRENCE_ID)),]





#년월일별 수술 횟수 (입원/외래)_PCI
ACS_I20_PCI_count <- IJ_ACS_I20_PCI_dup  %>% 
  mutate(cond = I20, proc=PCI) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_PCI_count <- IJ_ACS_I21_PCI_dup %>% 
  mutate(cond = I21, proc=PCI) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_PCI_count <- IJ_ACS_I20_1_PCI_dup  %>%
  mutate(cond = I20_I21, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_PCI_count <- IJ_ACS_I20_1_4_PCI_dup  %>% 
  mutate(cond = I20_I24, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_PCI_count <- IJ_ischstr_PCI_dup  %>% 
  mutate(cond = ischstr, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_PCI_count <- IJ_subhae_PCI_dup %>% 
  mutate(cond = subhae, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_PCI_count <- IJ_haestr_1_PCI_dup  %>% 
  mutate(cond = haestr_1, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_PCI_count <- IJ_haestr_1_2_PCI_dup  %>% 
  mutate(cond = haestr_1_2, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_PCI_count <- IJ_haestr_0_2_PCI_dup  %>% 
  mutate(cond = haestr_0_2, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_PCI_count <- IJ_unspe_PCI_dup %>% 
  mutate(cond = unspe, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_PCI_count <- IJ_stroke_0_3_PCI_dup  %>% 
  mutate(cond = stroke_0_3, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_PCI_count <- IJ_stroke_0_4_PCI_dup  %>% 
  mutate(cond = stroke_0_4, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_PCI_count <- IJ_ACS_I20_1_stroke_0_4_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_PCI_count <- IJ_ACS_I20_1_4_stroke_0_4_PCI_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_PCI_count <- IJ_ACS_I20_1_stroke_0_3_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_PCI_count <- IJ_ACS_I20_1_4_stroke_0_3_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_PCI_count <- IJ_ACS_I20_1_ischstr_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_PCI_count <- IJ_ACS_I20_1_4_ischstr_PCI_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_PCI_count <- IJ_ACS_I20_1_subhae_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_PCI_count <- IJ_ACS_I20_1_4_subhae_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_PCI_count <- IJ_ACS_I20_1_haestr_1_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_PCI_count <- IJ_ACS_I20_1_4_haestr_1_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_PCI_count <- IJ_ACS_I20_1_haestr_1_2_PCI_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_PCI_count <- IJ_ACS_I20_1_4_haestr_1_2_PCI_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_PCI_count <- IJ_ACS_I20_1_haestr_0_2_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_PCI_count <- IJ_ACS_I20_1_4_haestr_0_2_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_PCI_count <- IJ_ACS_I20_1_unspe_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_PCI_count <- IJ_ACS_I20_1_4_unspe_PCI_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=PCI) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))


#년월일별 수술 횟수 (입원/외래)_CABG
ACS_I20_CABG_count <- IJ_ACS_I20_CABG_dup  %>% 
  mutate(cond = I20, proc=CABG) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_CABG_count <- IJ_ACS_I21_CABG_dup %>% 
  mutate(cond = I21, proc=CABG) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_CABG_count <- IJ_ACS_I20_1_CABG_dup  %>%
  mutate(cond = I20_I21, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_CABG_count <- IJ_ACS_I20_1_4_CABG_dup  %>% 
  mutate(cond = I20_I24, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_CABG_count <- IJ_ischstr_CABG_dup  %>% 
  mutate(cond = ischstr, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_CABG_count <- IJ_subhae_CABG_dup %>% 
  mutate(cond = subhae, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_CABG_count <- IJ_haestr_1_CABG_dup  %>% 
  mutate(cond = haestr_1, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_CABG_count <- IJ_haestr_1_2_CABG_dup  %>% 
  mutate(cond = haestr_1_2, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_CABG_count <- IJ_haestr_0_2_CABG_dup  %>% 
  mutate(cond = haestr_0_2, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_CABG_count <- IJ_unspe_CABG_dup %>% 
  mutate(cond = unspe, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_CABG_count <- IJ_stroke_0_3_CABG_dup  %>% 
  mutate(cond = stroke_0_3, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_CABG_count <- IJ_stroke_0_4_CABG_dup  %>% 
  mutate(cond = stroke_0_4, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_CABG_count <- IJ_ACS_I20_1_stroke_0_4_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_CABG_count <- IJ_ACS_I20_1_4_stroke_0_4_CABG_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_CABG_count <- IJ_ACS_I20_1_stroke_0_3_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_CABG_count <- IJ_ACS_I20_1_4_stroke_0_3_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_CABG_count <- IJ_ACS_I20_1_ischstr_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_CABG_count <- IJ_ACS_I20_1_4_ischstr_CABG_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_CABG_count <- IJ_ACS_I20_1_subhae_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_CABG_count <- IJ_ACS_I20_1_4_subhae_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_CABG_count <- IJ_ACS_I20_1_haestr_1_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_CABG_count <- IJ_ACS_I20_1_4_haestr_1_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_CABG_count <- IJ_ACS_I20_1_haestr_1_2_CABG_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_CABG_count <- IJ_ACS_I20_1_4_haestr_1_2_CABG_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_CABG_count <- IJ_ACS_I20_1_haestr_0_2_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_CABG_count <- IJ_ACS_I20_1_4_haestr_0_2_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_CABG_count <- IJ_ACS_I20_1_unspe_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_CABG_count <- IJ_ACS_I20_1_4_unspe_CABG_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=CABG) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
#년월일별 수술 횟수 (입원/외래)_CABG_extra
ACS_I20_CABG_extra_count <- IJ_ACS_I20_CABG_extra_dup  %>% 
  mutate(cond = I20, proc=CABG_extra) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_CABG_extra_count <- IJ_ACS_I21_CABG_extra_dup %>% 
  mutate(cond = I21, proc=CABG_extra) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_CABG_extra_count <- IJ_ACS_I20_1_CABG_extra_dup  %>%
  mutate(cond = I20_I21, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_CABG_extra_count <- IJ_ACS_I20_1_4_CABG_extra_dup  %>% 
  mutate(cond = I20_I24, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_CABG_extra_count <- IJ_ischstr_CABG_extra_dup  %>% 
  mutate(cond = ischstr, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_CABG_extra_count <- IJ_subhae_CABG_extra_dup %>% 
  mutate(cond = subhae, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_CABG_extra_count <- IJ_haestr_1_CABG_extra_dup  %>% 
  mutate(cond = haestr_1, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_CABG_extra_count <- IJ_haestr_1_2_CABG_extra_dup  %>% 
  mutate(cond = haestr_1_2, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_CABG_extra_count <- IJ_haestr_0_2_CABG_extra_dup  %>% 
  mutate(cond = haestr_0_2, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_CABG_extra_count <- IJ_unspe_CABG_extra_dup %>% 
  mutate(cond = unspe, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_CABG_extra_count <- IJ_stroke_0_3_CABG_extra_dup  %>% 
  mutate(cond = stroke_0_3, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_CABG_extra_count <- IJ_stroke_0_4_CABG_extra_dup  %>% 
  mutate(cond = stroke_0_4, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_CABG_extra_count <- IJ_ACS_I20_1_stroke_0_4_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_CABG_extra_count <- IJ_ACS_I20_1_4_stroke_0_4_CABG_extra_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_CABG_extra_count <- IJ_ACS_I20_1_stroke_0_3_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_CABG_extra_count <- IJ_ACS_I20_1_4_stroke_0_3_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_CABG_extra_count <- IJ_ACS_I20_1_ischstr_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_CABG_extra_count <- IJ_ACS_I20_1_4_ischstr_CABG_extra_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_CABG_extra_count <- IJ_ACS_I20_1_subhae_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_CABG_extra_count <- IJ_ACS_I20_1_4_subhae_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_CABG_extra_count <- IJ_ACS_I20_1_haestr_1_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_CABG_extra_count <- IJ_ACS_I20_1_4_haestr_1_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_CABG_extra_count <- IJ_ACS_I20_1_haestr_1_2_CABG_extra_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_CABG_extra_count <- IJ_ACS_I20_1_4_haestr_1_2_CABG_extra_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_CABG_extra_count <- IJ_ACS_I20_1_haestr_0_2_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_CABG_extra_count <- IJ_ACS_I20_1_4_haestr_0_2_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_CABG_extra_count <- IJ_ACS_I20_1_unspe_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_CABG_extra_count <- IJ_ACS_I20_1_4_unspe_CABG_extra_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=CABG_extra) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
#년월일별 수술 횟수 (입원/외래)_TFCA
ACS_I20_TFCA_count <- IJ_ACS_I20_TFCA_dup  %>% 
  mutate(cond = I20, proc=TFCA) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_TFCA_count <- IJ_ACS_I21_TFCA_dup %>% 
  mutate(cond = I21, proc=TFCA) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_TFCA_count <- IJ_ACS_I20_1_TFCA_dup  %>%
  mutate(cond = I20_I21, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_TFCA_count <- IJ_ACS_I20_1_4_TFCA_dup  %>% 
  mutate(cond = I20_I24, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_TFCA_count <- IJ_ischstr_TFCA_dup  %>% 
  mutate(cond = ischstr, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_TFCA_count <- IJ_subhae_TFCA_dup %>% 
  mutate(cond = subhae, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_TFCA_count <- IJ_haestr_1_TFCA_dup  %>% 
  mutate(cond = haestr_1, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_TFCA_count <- IJ_haestr_1_2_TFCA_dup  %>% 
  mutate(cond = haestr_1_2, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_TFCA_count <- IJ_haestr_0_2_TFCA_dup  %>% 
  mutate(cond = haestr_0_2, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_TFCA_count <- IJ_unspe_TFCA_dup %>% 
  mutate(cond = unspe, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_TFCA_count <- IJ_stroke_0_3_TFCA_dup  %>% 
  mutate(cond = stroke_0_3, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_TFCA_count <- IJ_stroke_0_4_TFCA_dup  %>% 
  mutate(cond = stroke_0_4, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_TFCA_count <- IJ_ACS_I20_1_stroke_0_4_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_TFCA_count <- IJ_ACS_I20_1_4_stroke_0_4_TFCA_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_TFCA_count <- IJ_ACS_I20_1_stroke_0_3_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_TFCA_count <- IJ_ACS_I20_1_4_stroke_0_3_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_TFCA_count <- IJ_ACS_I20_1_ischstr_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_TFCA_count <- IJ_ACS_I20_1_4_ischstr_TFCA_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_TFCA_count <- IJ_ACS_I20_1_subhae_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_TFCA_count <- IJ_ACS_I20_1_4_subhae_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_TFCA_count <- IJ_ACS_I20_1_haestr_1_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_TFCA_count <- IJ_ACS_I20_1_4_haestr_1_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_TFCA_count <- IJ_ACS_I20_1_haestr_1_2_TFCA_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_TFCA_count <- IJ_ACS_I20_1_4_haestr_1_2_TFCA_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_TFCA_count <- IJ_ACS_I20_1_haestr_0_2_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_TFCA_count <- IJ_ACS_I20_1_4_haestr_0_2_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_TFCA_count <- IJ_ACS_I20_1_unspe_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_TFCA_count <- IJ_ACS_I20_1_4_unspe_TFCA_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=TFCA) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
#년월일별 수술 횟수 (입원/외래)_angioplasty_cerebral
ACS_I20_angioplasty_cerebral_count <- IJ_ACS_I20_angioplasty_cerebral_dup  %>% 
  mutate(cond = I20, proc=angioplasty_cerebral) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_angioplasty_cerebral_count <- IJ_ACS_I21_angioplasty_cerebral_dup %>% 
  mutate(cond = I21, proc=angioplasty_cerebral) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_angioplasty_cerebral_count <- IJ_ACS_I20_1_angioplasty_cerebral_dup  %>%
  mutate(cond = I20_I21, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_angioplasty_cerebral_dup  %>% 
  mutate(cond = I20_I24, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_angioplasty_cerebral_count <- IJ_ischstr_angioplasty_cerebral_dup  %>% 
  mutate(cond = ischstr, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_angioplasty_cerebral_count <- IJ_subhae_angioplasty_cerebral_dup %>% 
  mutate(cond = subhae, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_angioplasty_cerebral_count <- IJ_haestr_1_angioplasty_cerebral_dup  %>% 
  mutate(cond = haestr_1, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_angioplasty_cerebral_count <- IJ_haestr_1_2_angioplasty_cerebral_dup  %>% 
  mutate(cond = haestr_1_2, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_angioplasty_cerebral_count <- IJ_haestr_0_2_angioplasty_cerebral_dup  %>% 
  mutate(cond = haestr_0_2, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_angioplasty_cerebral_count <- IJ_unspe_angioplasty_cerebral_dup %>% 
  mutate(cond = unspe, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_angioplasty_cerebral_count <- IJ_stroke_0_3_angioplasty_cerebral_dup  %>% 
  mutate(cond = stroke_0_3, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_angioplasty_cerebral_count <- IJ_stroke_0_4_angioplasty_cerebral_dup  %>% 
  mutate(cond = stroke_0_4, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_angioplasty_cerebral_count <- IJ_ACS_I20_1_stroke_0_4_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_cerebral_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_angioplasty_cerebral_count <- IJ_ACS_I20_1_stroke_0_3_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_angioplasty_cerebral_count <- IJ_ACS_I20_1_ischstr_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_ischstr_angioplasty_cerebral_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_angioplasty_cerebral_count <- IJ_ACS_I20_1_subhae_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_subhae_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_angioplasty_cerebral_count <- IJ_ACS_I20_1_haestr_1_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_haestr_1_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_angioplasty_cerebral_count <- IJ_ACS_I20_1_haestr_1_2_angioplasty_cerebral_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_cerebral_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_angioplasty_cerebral_count <- IJ_ACS_I20_1_haestr_0_2_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_angioplasty_cerebral_count <- IJ_ACS_I20_1_unspe_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_angioplasty_cerebral_count <- IJ_ACS_I20_1_4_unspe_angioplasty_cerebral_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=angioplasty_cerebral) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
#년월일별 수술 횟수 (입원/외래)_angioplasty_carotid
ACS_I20_angioplasty_carotid_count <- IJ_ACS_I20_angioplasty_carotid_dup  %>% 
  mutate(cond = I20, proc=angioplasty_carotid) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_angioplasty_carotid_count <- IJ_ACS_I21_angioplasty_carotid_dup %>% 
  mutate(cond = I21, proc=angioplasty_carotid) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_angioplasty_carotid_count <- IJ_ACS_I20_1_angioplasty_carotid_dup  %>%
  mutate(cond = I20_I21, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_angioplasty_carotid_count <- IJ_ACS_I20_1_4_angioplasty_carotid_dup  %>% 
  mutate(cond = I20_I24, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_angioplasty_carotid_count <- IJ_ischstr_angioplasty_carotid_dup  %>% 
  mutate(cond = ischstr, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_angioplasty_carotid_count <- IJ_subhae_angioplasty_carotid_dup %>% 
  mutate(cond = subhae, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_angioplasty_carotid_count <- IJ_haestr_1_angioplasty_carotid_dup  %>% 
  mutate(cond = haestr_1, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_angioplasty_carotid_count <- IJ_haestr_1_2_angioplasty_carotid_dup  %>% 
  mutate(cond = haestr_1_2, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_angioplasty_carotid_count <- IJ_haestr_0_2_angioplasty_carotid_dup  %>% 
  mutate(cond = haestr_0_2, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_angioplasty_carotid_count <- IJ_unspe_angioplasty_carotid_dup %>% 
  mutate(cond = unspe, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_angioplasty_carotid_count <- IJ_stroke_0_3_angioplasty_carotid_dup  %>% 
  mutate(cond = stroke_0_3, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_angioplasty_carotid_count <- IJ_stroke_0_4_angioplasty_carotid_dup  %>% 
  mutate(cond = stroke_0_4, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_angioplasty_carotid_count <- IJ_ACS_I20_1_stroke_0_4_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_angioplasty_carotid_count <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_carotid_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_angioplasty_carotid_count <- IJ_ACS_I20_1_stroke_0_3_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_angioplasty_carotid_count <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_angioplasty_carotid_count <- IJ_ACS_I20_1_ischstr_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_angioplasty_carotid_count <- IJ_ACS_I20_1_4_ischstr_angioplasty_carotid_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_angioplasty_carotid_count <- IJ_ACS_I20_1_subhae_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_angioplasty_carotid_count <- IJ_ACS_I20_1_4_subhae_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_angioplasty_carotid_count <- IJ_ACS_I20_1_haestr_1_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_angioplasty_carotid_count <- IJ_ACS_I20_1_4_haestr_1_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_angioplasty_carotid_count <- IJ_ACS_I20_1_haestr_1_2_angioplasty_carotid_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_angioplasty_carotid_count <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_carotid_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_angioplasty_carotid_count <- IJ_ACS_I20_1_haestr_0_2_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_angioplasty_carotid_count <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_angioplasty_carotid_count <- IJ_ACS_I20_1_unspe_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_angioplasty_carotid_count <- IJ_ACS_I20_1_4_unspe_angioplasty_carotid_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=angioplasty_carotid) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
#년월일별 수술 횟수 (입원/외래)_angioplasty_aortic
ACS_I20_angioplasty_aortic_count <- IJ_ACS_I20_angioplasty_aortic_dup  %>% 
  mutate(cond = I20, proc=angioplasty_aortic) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_angioplasty_aortic_count <- IJ_ACS_I21_angioplasty_aortic_dup %>% 
  mutate(cond = I21, proc=angioplasty_aortic) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_angioplasty_aortic_count <- IJ_ACS_I20_1_angioplasty_aortic_dup  %>%
  mutate(cond = I20_I21, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_angioplasty_aortic_count <- IJ_ACS_I20_1_4_angioplasty_aortic_dup  %>% 
  mutate(cond = I20_I24, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_angioplasty_aortic_count <- IJ_ischstr_angioplasty_aortic_dup  %>% 
  mutate(cond = ischstr, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_angioplasty_aortic_count <- IJ_subhae_angioplasty_aortic_dup %>% 
  mutate(cond = subhae, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_angioplasty_aortic_count <- IJ_haestr_1_angioplasty_aortic_dup  %>% 
  mutate(cond = haestr_1, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_angioplasty_aortic_count <- IJ_haestr_1_2_angioplasty_aortic_dup  %>% 
  mutate(cond = haestr_1_2, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_angioplasty_aortic_count <- IJ_haestr_0_2_angioplasty_aortic_dup  %>% 
  mutate(cond = haestr_0_2, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_angioplasty_aortic_count <- IJ_unspe_angioplasty_aortic_dup %>% 
  mutate(cond = unspe, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_angioplasty_aortic_count <- IJ_stroke_0_3_angioplasty_aortic_dup  %>% 
  mutate(cond = stroke_0_3, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_angioplasty_aortic_count <- IJ_stroke_0_4_angioplasty_aortic_dup  %>% 
  mutate(cond = stroke_0_4, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_angioplasty_aortic_count <- IJ_ACS_I20_1_stroke_0_4_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_angioplasty_aortic_count <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_aortic_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_angioplasty_aortic_count <- IJ_ACS_I20_1_stroke_0_3_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_angioplasty_aortic_count <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_angioplasty_aortic_count <- IJ_ACS_I20_1_ischstr_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_angioplasty_aortic_count <- IJ_ACS_I20_1_4_ischstr_angioplasty_aortic_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_angioplasty_aortic_count <- IJ_ACS_I20_1_subhae_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_angioplasty_aortic_count <- IJ_ACS_I20_1_4_subhae_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_angioplasty_aortic_count <- IJ_ACS_I20_1_haestr_1_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_angioplasty_aortic_count <- IJ_ACS_I20_1_4_haestr_1_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_angioplasty_aortic_count <- IJ_ACS_I20_1_haestr_1_2_angioplasty_aortic_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_angioplasty_aortic_count <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_aortic_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_angioplasty_aortic_count <- IJ_ACS_I20_1_haestr_0_2_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_angioplasty_aortic_count <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_angioplasty_aortic_count <- IJ_ACS_I20_1_unspe_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_angioplasty_aortic_count <- IJ_ACS_I20_1_4_unspe_angioplasty_aortic_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=angioplasty_aortic) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
#년월일별 수술 횟수 (입원/외래)_angioplasty_pulmonary
ACS_I20_angioplasty_pulmonary_count <- IJ_ACS_I20_angioplasty_pulmonary_dup  %>% 
  mutate(cond = I20, proc=angioplasty_pulmonary) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_angioplasty_pulmonary_count <- IJ_ACS_I21_angioplasty_pulmonary_dup %>% 
  mutate(cond = I21, proc=angioplasty_pulmonary) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_angioplasty_pulmonary_count <- IJ_ACS_I20_1_angioplasty_pulmonary_dup  %>%
  mutate(cond = I20_I21, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_angioplasty_pulmonary_dup  %>% 
  mutate(cond = I20_I24, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_angioplasty_pulmonary_count <- IJ_ischstr_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ischstr, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_angioplasty_pulmonary_count <- IJ_subhae_angioplasty_pulmonary_dup %>% 
  mutate(cond = subhae, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_angioplasty_pulmonary_count <- IJ_haestr_1_angioplasty_pulmonary_dup  %>% 
  mutate(cond = haestr_1, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_angioplasty_pulmonary_count <- IJ_haestr_1_2_angioplasty_pulmonary_dup  %>% 
  mutate(cond = haestr_1_2, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_angioplasty_pulmonary_count <- IJ_haestr_0_2_angioplasty_pulmonary_dup  %>% 
  mutate(cond = haestr_0_2, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_angioplasty_pulmonary_count <- IJ_unspe_angioplasty_pulmonary_dup %>% 
  mutate(cond = unspe, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_angioplasty_pulmonary_count <- IJ_stroke_0_3_angioplasty_pulmonary_dup  %>% 
  mutate(cond = stroke_0_3, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_angioplasty_pulmonary_count <- IJ_stroke_0_4_angioplasty_pulmonary_dup  %>% 
  mutate(cond = stroke_0_4, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_angioplasty_pulmonary_count <- IJ_ACS_I20_1_stroke_0_4_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_pulmonary_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_angioplasty_pulmonary_count <- IJ_ACS_I20_1_stroke_0_3_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_angioplasty_pulmonary_count <- IJ_ACS_I20_1_ischstr_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_ischstr_angioplasty_pulmonary_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_angioplasty_pulmonary_count <- IJ_ACS_I20_1_subhae_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_subhae_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_angioplasty_pulmonary_count <- IJ_ACS_I20_1_haestr_1_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_haestr_1_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_angioplasty_pulmonary_count <- IJ_ACS_I20_1_haestr_1_2_angioplasty_pulmonary_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_pulmonary_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_angioplasty_pulmonary_count <- IJ_ACS_I20_1_haestr_0_2_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_angioplasty_pulmonary_count <- IJ_ACS_I20_1_unspe_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_angioplasty_pulmonary_count <- IJ_ACS_I20_1_4_unspe_angioplasty_pulmonary_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=angioplasty_pulmonary) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
#년월일별 수술 횟수 (입원/외래)_angioplasty_others
ACS_I20_angioplasty_others_count <- IJ_ACS_I20_angioplasty_others_dup  %>% 
  mutate(cond = I20, proc=angioplasty_others) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_angioplasty_others_count <- IJ_ACS_I21_angioplasty_others_dup %>% 
  mutate(cond = I21, proc=angioplasty_others) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_angioplasty_others_count <- IJ_ACS_I20_1_angioplasty_others_dup  %>%
  mutate(cond = I20_I21, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_angioplasty_others_count <- IJ_ACS_I20_1_4_angioplasty_others_dup  %>% 
  mutate(cond = I20_I24, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_angioplasty_others_count <- IJ_ischstr_angioplasty_others_dup  %>% 
  mutate(cond = ischstr, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_angioplasty_others_count <- IJ_subhae_angioplasty_others_dup %>% 
  mutate(cond = subhae, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_angioplasty_others_count <- IJ_haestr_1_angioplasty_others_dup  %>% 
  mutate(cond = haestr_1, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_angioplasty_others_count <- IJ_haestr_1_2_angioplasty_others_dup  %>% 
  mutate(cond = haestr_1_2, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_angioplasty_others_count <- IJ_haestr_0_2_angioplasty_others_dup  %>% 
  mutate(cond = haestr_0_2, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_angioplasty_others_count <- IJ_unspe_angioplasty_others_dup %>% 
  mutate(cond = unspe, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_angioplasty_others_count <- IJ_stroke_0_3_angioplasty_others_dup  %>% 
  mutate(cond = stroke_0_3, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_angioplasty_others_count <- IJ_stroke_0_4_angioplasty_others_dup  %>% 
  mutate(cond = stroke_0_4, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_angioplasty_others_count <- IJ_ACS_I20_1_stroke_0_4_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_angioplasty_others_count <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_others_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_angioplasty_others_count <- IJ_ACS_I20_1_stroke_0_3_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_angioplasty_others_count <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_angioplasty_others_count <- IJ_ACS_I20_1_ischstr_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_angioplasty_others_count <- IJ_ACS_I20_1_4_ischstr_angioplasty_others_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_angioplasty_others_count <- IJ_ACS_I20_1_subhae_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_angioplasty_others_count <- IJ_ACS_I20_1_4_subhae_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_angioplasty_others_count <- IJ_ACS_I20_1_haestr_1_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_angioplasty_others_count <- IJ_ACS_I20_1_4_haestr_1_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_angioplasty_others_count <- IJ_ACS_I20_1_haestr_1_2_angioplasty_others_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_angioplasty_others_count <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_others_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_angioplasty_others_count <- IJ_ACS_I20_1_haestr_0_2_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_angioplasty_others_count <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_angioplasty_others_count <- IJ_ACS_I20_1_unspe_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_angioplasty_others_count <- IJ_ACS_I20_1_4_unspe_angioplasty_others_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=angioplasty_others) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))

#년월일별 수술 횟수 (입원/외래)_angioplasty_drugs
ACS_I20_angioplasty_drugs_count <- IJ_ACS_I20_angioplasty_drugs_dup  %>% 
  mutate(cond = I20, proc=angioplasty_drugs) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I21_angioplasty_drugs_count <- IJ_ACS_I21_angioplasty_drugs_dup %>% 
  mutate(cond = I21, proc=angioplasty_drugs) %>%
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_angioplasty_drugs_count <- IJ_ACS_I20_1_angioplasty_drugs_dup  %>%
  mutate(cond = I20_I21, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_angioplasty_drugs_count <- IJ_ACS_I20_1_4_angioplasty_drugs_dup  %>% 
  mutate(cond = I20_I24, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ischstr_angioplasty_drugs_count <- IJ_ischstr_angioplasty_drugs_dup  %>% 
  mutate(cond = ischstr, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
subhae_angioplasty_drugs_count <- IJ_subhae_angioplasty_drugs_dup %>% 
  mutate(cond = subhae, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_angioplasty_drugs_count <- IJ_haestr_1_angioplasty_drugs_dup  %>% 
  mutate(cond = haestr_1, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_1_2_angioplasty_drugs_count <- IJ_haestr_1_2_angioplasty_drugs_dup  %>% 
  mutate(cond = haestr_1_2, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
haestr_0_2_angioplasty_drugs_count <- IJ_haestr_0_2_angioplasty_drugs_dup  %>% 
  mutate(cond = haestr_0_2, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
unspe_angioplasty_drugs_count <- IJ_unspe_angioplasty_drugs_dup %>% 
  mutate(cond = unspe, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_3_angioplasty_drugs_count <- IJ_stroke_0_3_angioplasty_drugs_dup  %>% 
  mutate(cond = stroke_0_3, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
stroke_0_4_angioplasty_drugs_count <- IJ_stroke_0_4_angioplasty_drugs_dup  %>% 
  mutate(cond = stroke_0_4, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_4_angioplasty_drugs_count <- IJ_ACS_I20_1_stroke_0_4_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_4, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_4_angioplasty_drugs_count <- IJ_ACS_I20_1_4_stroke_0_4_angioplasty_drugs_dup %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_4, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_stroke_0_3_angioplasty_drugs_count <- IJ_ACS_I20_1_stroke_0_3_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_stroke_0_3, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_stroke_0_3_angioplasty_drugs_count <- IJ_ACS_I20_1_4_stroke_0_3_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_4_stroke_0_3, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_ischstr_angioplasty_drugs_count <- IJ_ACS_I20_1_ischstr_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_ischstr, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_ischstr_angioplasty_drugs_count <- IJ_ACS_I20_1_4_ischstr_angioplasty_drugs_dup %>% 
  mutate(cond = ACS_I20_1_4_ischstr, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_subhae_angioplasty_drugs_count <- IJ_ACS_I20_1_subhae_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_subhae, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_subhae_angioplasty_drugs_count <- IJ_ACS_I20_1_4_subhae_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_4_subhae, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_angioplasty_drugs_count <- IJ_ACS_I20_1_haestr_1_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_1, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_angioplasty_drugs_count <- IJ_ACS_I20_1_4_haestr_1_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_1, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_1_2_angioplasty_drugs_count <- IJ_ACS_I20_1_haestr_1_2_angioplasty_drugs_dup  %>%  
  mutate(cond = ACS_I20_1_haestr_1_2, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_1_2_angioplasty_drugs_count <- IJ_ACS_I20_1_4_haestr_1_2_angioplasty_drugs_dup  %>%  
  mutate(cond = ACS_I20_1_4_haestr_1_2, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_haestr_0_2_angioplasty_drugs_count <- IJ_ACS_I20_1_haestr_0_2_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_haestr_0_2, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_haestr_0_2_angioplasty_drugs_count <- IJ_ACS_I20_1_4_haestr_0_2_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_4_haestr_0_2, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_unspe_angioplasty_drugs_count <- IJ_ACS_I20_1_unspe_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_unspe, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))
ACS_I20_1_4_unspe_angioplasty_drugs_count <- IJ_ACS_I20_1_4_unspe_angioplasty_drugs_dup  %>% 
  mutate(cond = ACS_I20_1_4_unspe, proc=angioplasty_drugs) %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n(), total_cost = sum(TOTAL_PAID))

total_acs_str_proc <- rbind(ACS_I20_PCI_count, 
                            ACS_I21_PCI_count, 
                            ACS_I20_1_PCI_count, 
                            ACS_I20_1_4_PCI_count, 
                            ischstr_PCI_count, 
                            subhae_PCI_count, 
                            haestr_1_PCI_count, 
                            haestr_1_2_PCI_count, 
                            haestr_0_2_PCI_count, 
                            unspe_PCI_count, 
                            stroke_0_3_PCI_count, 
                            stroke_0_4_PCI_count, 
                            ACS_I20_1_stroke_0_4_PCI_count, 
                            ACS_I20_1_4_stroke_0_4_PCI_count, 
                            ACS_I20_1_stroke_0_3_PCI_count, 
                            ACS_I20_1_4_stroke_0_3_PCI_count, 
                            ACS_I20_1_ischstr_PCI_count, 
                            ACS_I20_1_4_ischstr_PCI_count, 
                            ACS_I20_1_subhae_PCI_count, 
                            ACS_I20_1_4_subhae_PCI_count, 
                            ACS_I20_1_haestr_1_PCI_count, 
                            ACS_I20_1_4_haestr_1_PCI_count, 
                            ACS_I20_1_haestr_1_2_PCI_count, 
                            ACS_I20_1_4_haestr_1_2_PCI_count, 
                            ACS_I20_1_haestr_0_2_PCI_count, 
                            ACS_I20_1_4_haestr_0_2_PCI_count, 
                            ACS_I20_1_unspe_PCI_count, 
                            ACS_I20_1_4_unspe_PCI_count, 
                            ACS_I20_CABG_count, 
                            ACS_I21_CABG_count, 
                            ACS_I20_1_CABG_count, 
                            ACS_I20_1_4_CABG_count, 
                            ischstr_CABG_count, 
                            subhae_CABG_count, 
                            haestr_1_CABG_count, 
                            haestr_1_2_CABG_count, 
                            haestr_0_2_CABG_count, 
                            unspe_CABG_count, 
                            stroke_0_3_CABG_count, 
                            stroke_0_4_CABG_count, 
                            ACS_I20_1_stroke_0_4_CABG_count, 
                            ACS_I20_1_4_stroke_0_4_CABG_count, 
                            ACS_I20_1_stroke_0_3_CABG_count, 
                            ACS_I20_1_4_stroke_0_3_CABG_count, 
                            ACS_I20_1_ischstr_CABG_count, 
                            ACS_I20_1_4_ischstr_CABG_count, 
                            ACS_I20_1_subhae_CABG_count, 
                            ACS_I20_1_4_subhae_CABG_count, 
                            ACS_I20_1_haestr_1_CABG_count, 
                            ACS_I20_1_4_haestr_1_CABG_count, 
                            ACS_I20_1_haestr_1_2_CABG_count, 
                            ACS_I20_1_4_haestr_1_2_CABG_count, 
                            ACS_I20_1_haestr_0_2_CABG_count, 
                            ACS_I20_1_4_haestr_0_2_CABG_count, 
                            ACS_I20_1_unspe_CABG_count, 
                            ACS_I20_1_4_unspe_CABG_count, 
                            ACS_I20_CABG_extra_count, 
                            ACS_I21_CABG_extra_count, 
                            ACS_I20_1_CABG_extra_count, 
                            ACS_I20_1_4_CABG_extra_count, 
                            ischstr_CABG_extra_count, 
                            subhae_CABG_extra_count, 
                            haestr_1_CABG_extra_count, 
                            haestr_1_2_CABG_extra_count, 
                            haestr_0_2_CABG_extra_count, 
                            unspe_CABG_extra_count, 
                            stroke_0_3_CABG_extra_count, 
                            stroke_0_4_CABG_extra_count, 
                            ACS_I20_1_stroke_0_4_CABG_extra_count, 
                            ACS_I20_1_4_stroke_0_4_CABG_extra_count, 
                            ACS_I20_1_stroke_0_3_CABG_extra_count, 
                            ACS_I20_1_4_stroke_0_3_CABG_extra_count, 
                            ACS_I20_1_ischstr_CABG_extra_count, 
                            ACS_I20_1_4_ischstr_CABG_extra_count, 
                            ACS_I20_1_subhae_CABG_extra_count, 
                            ACS_I20_1_4_subhae_CABG_extra_count, 
                            ACS_I20_1_haestr_1_CABG_extra_count, 
                            ACS_I20_1_4_haestr_1_CABG_extra_count, 
                            ACS_I20_1_haestr_1_2_CABG_extra_count, 
                            ACS_I20_1_4_haestr_1_2_CABG_extra_count, 
                            ACS_I20_1_haestr_0_2_CABG_extra_count, 
                            ACS_I20_1_4_haestr_0_2_CABG_extra_count, 
                            ACS_I20_1_unspe_CABG_extra_count, 
                            ACS_I20_1_4_unspe_CABG_extra_count, 
                            ACS_I20_TFCA_count, 
                            ACS_I21_TFCA_count, 
                            ACS_I20_1_TFCA_count, 
                            ACS_I20_1_4_TFCA_count, 
                            ischstr_TFCA_count, 
                            subhae_TFCA_count, 
                            haestr_1_TFCA_count, 
                            haestr_1_2_TFCA_count, 
                            haestr_0_2_TFCA_count, 
                            unspe_TFCA_count, 
                            stroke_0_3_TFCA_count, 
                            stroke_0_4_TFCA_count, 
                            ACS_I20_1_stroke_0_4_TFCA_count, 
                            ACS_I20_1_4_stroke_0_4_TFCA_count, 
                            ACS_I20_1_stroke_0_3_TFCA_count, 
                            ACS_I20_1_4_stroke_0_3_TFCA_count, 
                            ACS_I20_1_ischstr_TFCA_count, 
                            ACS_I20_1_4_ischstr_TFCA_count, 
                            ACS_I20_1_subhae_TFCA_count, 
                            ACS_I20_1_4_subhae_TFCA_count, 
                            ACS_I20_1_haestr_1_TFCA_count, 
                            ACS_I20_1_4_haestr_1_TFCA_count, 
                            ACS_I20_1_haestr_1_2_TFCA_count, 
                            ACS_I20_1_4_haestr_1_2_TFCA_count, 
                            ACS_I20_1_haestr_0_2_TFCA_count, 
                            ACS_I20_1_4_haestr_0_2_TFCA_count, 
                            ACS_I20_1_unspe_TFCA_count, 
                            ACS_I20_1_4_unspe_TFCA_count, 
                            ACS_I20_angioplasty_cerebral_count, 
                            ACS_I21_angioplasty_cerebral_count, 
                            ACS_I20_1_angioplasty_cerebral_count, 
                            ACS_I20_1_4_angioplasty_cerebral_count, 
                            ischstr_angioplasty_cerebral_count, 
                            subhae_angioplasty_cerebral_count, 
                            haestr_1_angioplasty_cerebral_count, 
                            haestr_1_2_angioplasty_cerebral_count, 
                            haestr_0_2_angioplasty_cerebral_count, 
                            unspe_angioplasty_cerebral_count, 
                            stroke_0_3_angioplasty_cerebral_count, 
                            stroke_0_4_angioplasty_cerebral_count, 
                            ACS_I20_1_stroke_0_4_angioplasty_cerebral_count, 
                            ACS_I20_1_4_stroke_0_4_angioplasty_cerebral_count, 
                            ACS_I20_1_stroke_0_3_angioplasty_cerebral_count, 
                            ACS_I20_1_4_stroke_0_3_angioplasty_cerebral_count, 
                            ACS_I20_1_ischstr_angioplasty_cerebral_count, 
                            ACS_I20_1_4_ischstr_angioplasty_cerebral_count, 
                            ACS_I20_1_subhae_angioplasty_cerebral_count, 
                            ACS_I20_1_4_subhae_angioplasty_cerebral_count, 
                            ACS_I20_1_haestr_1_angioplasty_cerebral_count, 
                            ACS_I20_1_4_haestr_1_angioplasty_cerebral_count, 
                            ACS_I20_1_haestr_1_2_angioplasty_cerebral_count, 
                            ACS_I20_1_4_haestr_1_2_angioplasty_cerebral_count, 
                            ACS_I20_1_haestr_0_2_angioplasty_cerebral_count, 
                            ACS_I20_1_4_haestr_0_2_angioplasty_cerebral_count, 
                            ACS_I20_1_unspe_angioplasty_cerebral_count, 
                            ACS_I20_1_4_unspe_angioplasty_cerebral_count, 
                            ACS_I20_angioplasty_carotid_count, 
                            ACS_I21_angioplasty_carotid_count, 
                            ACS_I20_1_angioplasty_carotid_count, 
                            ACS_I20_1_4_angioplasty_carotid_count, 
                            ischstr_angioplasty_carotid_count, 
                            subhae_angioplasty_carotid_count, 
                            haestr_1_angioplasty_carotid_count, 
                            haestr_1_2_angioplasty_carotid_count, 
                            haestr_0_2_angioplasty_carotid_count, 
                            unspe_angioplasty_carotid_count, 
                            stroke_0_3_angioplasty_carotid_count, 
                            stroke_0_4_angioplasty_carotid_count, 
                            ACS_I20_1_stroke_0_4_angioplasty_carotid_count, 
                            ACS_I20_1_4_stroke_0_4_angioplasty_carotid_count, 
                            ACS_I20_1_stroke_0_3_angioplasty_carotid_count, 
                            ACS_I20_1_4_stroke_0_3_angioplasty_carotid_count, 
                            ACS_I20_1_ischstr_angioplasty_carotid_count, 
                            ACS_I20_1_4_ischstr_angioplasty_carotid_count, 
                            ACS_I20_1_subhae_angioplasty_carotid_count, 
                            ACS_I20_1_4_subhae_angioplasty_carotid_count, 
                            ACS_I20_1_haestr_1_angioplasty_carotid_count, 
                            ACS_I20_1_4_haestr_1_angioplasty_carotid_count, 
                            ACS_I20_1_haestr_1_2_angioplasty_carotid_count, 
                            ACS_I20_1_4_haestr_1_2_angioplasty_carotid_count, 
                            ACS_I20_1_haestr_0_2_angioplasty_carotid_count, 
                            ACS_I20_1_4_haestr_0_2_angioplasty_carotid_count, 
                            ACS_I20_1_unspe_angioplasty_carotid_count, 
                            ACS_I20_1_4_unspe_angioplasty_carotid_count, 
                            ACS_I20_angioplasty_aortic_count, 
                            ACS_I21_angioplasty_aortic_count, 
                            ACS_I20_1_angioplasty_aortic_count, 
                            ACS_I20_1_4_angioplasty_aortic_count, 
                            ischstr_angioplasty_aortic_count, 
                            subhae_angioplasty_aortic_count, 
                            haestr_1_angioplasty_aortic_count, 
                            haestr_1_2_angioplasty_aortic_count, 
                            haestr_0_2_angioplasty_aortic_count, 
                            unspe_angioplasty_aortic_count, 
                            stroke_0_3_angioplasty_aortic_count, 
                            stroke_0_4_angioplasty_aortic_count, 
                            ACS_I20_1_stroke_0_4_angioplasty_aortic_count, 
                            ACS_I20_1_4_stroke_0_4_angioplasty_aortic_count, 
                            ACS_I20_1_stroke_0_3_angioplasty_aortic_count, 
                            ACS_I20_1_4_stroke_0_3_angioplasty_aortic_count, 
                            ACS_I20_1_ischstr_angioplasty_aortic_count, 
                            ACS_I20_1_4_ischstr_angioplasty_aortic_count, 
                            ACS_I20_1_subhae_angioplasty_aortic_count, 
                            ACS_I20_1_4_subhae_angioplasty_aortic_count, 
                            ACS_I20_1_haestr_1_angioplasty_aortic_count, 
                            ACS_I20_1_4_haestr_1_angioplasty_aortic_count, 
                            ACS_I20_1_haestr_1_2_angioplasty_aortic_count, 
                            ACS_I20_1_4_haestr_1_2_angioplasty_aortic_count, 
                            ACS_I20_1_haestr_0_2_angioplasty_aortic_count, 
                            ACS_I20_1_4_haestr_0_2_angioplasty_aortic_count, 
                            ACS_I20_1_unspe_angioplasty_aortic_count, 
                            ACS_I20_1_4_unspe_angioplasty_aortic_count, 
                            ACS_I20_angioplasty_pulmonary_count, 
                            ACS_I21_angioplasty_pulmonary_count, 
                            ACS_I20_1_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_angioplasty_pulmonary_count, 
                            ischstr_angioplasty_pulmonary_count, 
                            subhae_angioplasty_pulmonary_count, 
                            haestr_1_angioplasty_pulmonary_count, 
                            haestr_1_2_angioplasty_pulmonary_count, 
                            haestr_0_2_angioplasty_pulmonary_count, 
                            unspe_angioplasty_pulmonary_count, 
                            stroke_0_3_angioplasty_pulmonary_count, 
                            stroke_0_4_angioplasty_pulmonary_count, 
                            ACS_I20_1_stroke_0_4_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_stroke_0_4_angioplasty_pulmonary_count, 
                            ACS_I20_1_stroke_0_3_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_stroke_0_3_angioplasty_pulmonary_count, 
                            ACS_I20_1_ischstr_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_ischstr_angioplasty_pulmonary_count, 
                            ACS_I20_1_subhae_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_subhae_angioplasty_pulmonary_count, 
                            ACS_I20_1_haestr_1_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_haestr_1_angioplasty_pulmonary_count, 
                            ACS_I20_1_haestr_1_2_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_haestr_1_2_angioplasty_pulmonary_count, 
                            ACS_I20_1_haestr_0_2_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_haestr_0_2_angioplasty_pulmonary_count, 
                            ACS_I20_1_unspe_angioplasty_pulmonary_count, 
                            ACS_I20_1_4_unspe_angioplasty_pulmonary_count, 
                            ACS_I20_angioplasty_others_count, 
                            ACS_I21_angioplasty_others_count, 
                            ACS_I20_1_angioplasty_others_count, 
                            ACS_I20_1_4_angioplasty_others_count, 
                            ischstr_angioplasty_others_count, 
                            subhae_angioplasty_others_count, 
                            haestr_1_angioplasty_others_count, 
                            haestr_1_2_angioplasty_others_count, 
                            haestr_0_2_angioplasty_others_count, 
                            unspe_angioplasty_others_count, 
                            stroke_0_3_angioplasty_others_count, 
                            stroke_0_4_angioplasty_others_count, 
                            ACS_I20_1_stroke_0_4_angioplasty_others_count, 
                            ACS_I20_1_4_stroke_0_4_angioplasty_others_count, 
                            ACS_I20_1_stroke_0_3_angioplasty_others_count, 
                            ACS_I20_1_4_stroke_0_3_angioplasty_others_count, 
                            ACS_I20_1_ischstr_angioplasty_others_count, 
                            ACS_I20_1_4_ischstr_angioplasty_others_count, 
                            ACS_I20_1_subhae_angioplasty_others_count, 
                            ACS_I20_1_4_subhae_angioplasty_others_count, 
                            ACS_I20_1_haestr_1_angioplasty_others_count, 
                            ACS_I20_1_4_haestr_1_angioplasty_others_count, 
                            ACS_I20_1_haestr_1_2_angioplasty_others_count, 
                            ACS_I20_1_4_haestr_1_2_angioplasty_others_count, 
                            ACS_I20_1_haestr_0_2_angioplasty_others_count, 
                            ACS_I20_1_4_haestr_0_2_angioplasty_others_count, 
                            ACS_I20_1_unspe_angioplasty_others_count, 
                            ACS_I20_1_4_unspe_angioplasty_others_count, 
                            ACS_I20_angioplasty_drugs_count, 
                            ACS_I21_angioplasty_drugs_count, 
                            ACS_I20_1_angioplasty_drugs_count, 
                            ACS_I20_1_4_angioplasty_drugs_count, 
                            ischstr_angioplasty_drugs_count, 
                            subhae_angioplasty_drugs_count, 
                            haestr_1_angioplasty_drugs_count, 
                            haestr_1_2_angioplasty_drugs_count, 
                            haestr_0_2_angioplasty_drugs_count, 
                            unspe_angioplasty_drugs_count, 
                            stroke_0_3_angioplasty_drugs_count, 
                            stroke_0_4_angioplasty_drugs_count, 
                            ACS_I20_1_stroke_0_4_angioplasty_drugs_count, 
                            ACS_I20_1_4_stroke_0_4_angioplasty_drugs_count, 
                            ACS_I20_1_stroke_0_3_angioplasty_drugs_count, 
                            ACS_I20_1_4_stroke_0_3_angioplasty_drugs_count, 
                            ACS_I20_1_ischstr_angioplasty_drugs_count, 
                            ACS_I20_1_4_ischstr_angioplasty_drugs_count, 
                            ACS_I20_1_subhae_angioplasty_drugs_count, 
                            ACS_I20_1_4_subhae_angioplasty_drugs_count, 
                            ACS_I20_1_haestr_1_angioplasty_drugs_count, 
                            ACS_I20_1_4_haestr_1_angioplasty_drugs_count, 
                            ACS_I20_1_haestr_1_2_angioplasty_drugs_count, 
                            ACS_I20_1_4_haestr_1_2_angioplasty_drugs_count, 
                            ACS_I20_1_haestr_0_2_angioplasty_drugs_count, 
                            ACS_I20_1_4_haestr_0_2_angioplasty_drugs_count, 
                            ACS_I20_1_unspe_angioplasty_drugs_count, 
                            ACS_I20_1_4_unspe_angioplasty_drugs_count)%>%
  select(cond, proc, VISTI_CONCEPT_ID,PROCEDURE_DATE, number_of_visit,total_cost)

write.csv(total_acs_str_proc, "./result_stroke/total_acs_str_proc")