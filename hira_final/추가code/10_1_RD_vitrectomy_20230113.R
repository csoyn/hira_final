
## TODO : 현재 작업 위치 적어주세요.
# (1_Settings.R를 포함하여 R 파일들이 존재하는 폴더명으로 작성해주세요)
path <- ""  # 현재 작업 위치
setwd(path)
source("1_Settings.R")
source("2_Functions.R")
source("10_extraFunctions.R")

cond.H330 <- condition_visit_cohort("42487772, 42487773, 42487774, 42487775, 42487776, 42487777, 42487778")
cond.H330_2 <- condition_visit_cohort("42487772, 42487773, 42487774, 42487775, 42487776, 42487777, 42487778, 42487784")
proc.vitrectomy <- procedureCohort_visit("4294683")
proc.buckling <- procedureCohort_visit("4230961")
proc.vitrectomy_buckling <- procedureCohort_visit("4294683, 4230961")

cond_proc_h330_vitrectomy <- inner_join(cond.H330, proc.vitrectomy, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
cond_proc_h330_vitrectomy_dup <- cond_proc_h330_vitrectomy[-which(duplicated(cond_proc_h330_vitrectomy$VISIT_OCCURRENCE_ID)),]
cond_proc_h330_buckling <- inner_join(cond.H330, proc.buckling, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
cond_proc_h330_buckling_dup <- cond_proc_h330_buckling[-which(duplicated(cond_proc_h330_buckling$VISIT_OCCURRENCE_ID)),]
cond_proc_h330_vitrectomy_buckling <- inner_join(cond.H330, proc.vitrectomy_buckling, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
cond_proc_h330_vitrectomy_buckling_dup <- cond_proc_h330_vitrectomy_buckling[-which(duplicated(cond_proc_h330_vitrectomy_buckling$VISIT_OCCURRENCE_ID)),]
cond_proc_h330_2_vitrectomy <- inner_join(cond.H330_2, proc.vitrectomy, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
cond_proc_h330_2_vitrectomy_dup <- cond_proc_h330_2_vitrectomy[-which(duplicated(cond_proc_h330_2_vitrectomy$VISIT_OCCURRENCE_ID)),]
cond_proc_h330_2_buckling <- inner_join(cond.H330_2, proc.buckling, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
cond_proc_h330_2_buckling_dup <- cond_proc_h330_2_buckling[-which(duplicated(cond_proc_h330_2_buckling$VISIT_OCCURRENCE_ID)),]
cond_proc_h330_2_vitrectomy_buckling <- inner_join(cond.H330_2, proc.vitrectomy_buckling, by=c('VISIT_OCCURRENCE_ID', 'PERSON_ID'))
cond_proc_h330_2_vitrectomy_buckling_dup <- cond_proc_h330_2_vitrectomy_buckling[-which(duplicated(cond_proc_h330_2_vitrectomy_buckling$VISIT_OCCURRENCE_ID)),]

#년월일별 수술 횟수 (입원/외래) 
result_RD_h330_vitectomy_count <- cond_proc_h330_vitrectomy_dup %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n())
result_RD_h330_buckling_count <- cond_proc_h330_buckling_dup %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n())
result_RD_h330_vitectomy_buckling_count <- cond_proc_h330_vitrectomy_buckling_dup %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n())
result_RD_h330_2_vitectomy_count <- cond_proc_h330_2_vitrectomy_dup %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n())
result_RD_h330_2_buckling_count <- cond_proc_h330_2_buckling_dup %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n())
result_RD_h330_2_vitectomy_buckling_count <- cond_proc_h330_2_vitrectomy_buckling_dup %>% 
  group_by(VISTI_CONCEPT_ID, PROCEDURE_DATE) %>%
  summarize(number_of_visit = n())


write.csv(result_RD_h330_vitectomy_count, "./result_RD_Vit/result_RD_h330_vitectomy_count.csv")
write.csv(result_RD_h330_buckling_count, "./result_RD_Vit/result_RD_h330_buckling_count.csv")
write.csv(result_RD_h330_vitectomy_buckling_count, "./result_RD_Vit/result_RD_h330_vitectomy_buckling_count.csv")
write.csv(result_RD_h330_2_vitectomy_count, "./result_RD_Vit/result_RD_h330_2_vitectomy_count.csv")
write.csv(result_RD_h330_2_buckling_count, "./result_RD_Vit/result_RD_h330_2_buckling_count.csv")
write.csv(result_RD_h330_2_vitectomy_buckling_count, "./result_RD_Vit/result_RD_h330_2_vitectomy_buckling_count.csv")