# COX : COVID as time-varying covatiate

## TODO : 현재 작업 위치 적어주세요.
# (1_Settings.R를 포함하여 R 파일들이 존재하는 폴더명으로 작성해주세요)
path <- ""  # 현재 작업 위치
setwd(path)

source("1_Settings.R")
source("2_Functions.R")
source("8_COX_function.R")
## TODO : schema를 설정해주세요.
cdm_schema <- "cdm"
cdm_voca_schema <- ""
researcher_schema <- "researcher"
covid_observation_id <- "704996"
covid_condition_id <- "37311061, 439676, 4100065"

rvo_concept_id <- "440392"

#############################################################################################

# Create Data Todo
# executeSql 에서 에러가 난다면 바로 아래 executeSql 주석을 풀어서 실행 후 다시 실행
{
  sqlquery_covid_obs <- covidObsSqlquery(researcher_schema, cdm_schema, covid_observation_id)
  executeSql(conn, sqlquery_covid_obs) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".covid_obs_data;"))
  
  sqlquery_covid_cond <- covidCondSqlquery(researcher_schema, cdm_schema, covid_condition_id)
  executeSql(conn, sqlquery_covid_cond) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".covid_cond_data;"))
  
  sqlquery_covid_all <- covidAllSqlquery(researcher_schema)
  executeSql(conn, sqlquery_covid_all) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".covid_data_all;"))
  
  sqlquery_covid_rownum <- covidRownumSqlquery(researcher_schema)
  executeSql(conn, sqlquery_covid_rownum) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".covid_data_rownum;"))
  
  sqlquery_covid_todo <- covidDataSqlquery(researcher_schema)
  executeSql(conn, sqlquery_covid_todo) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".covid_data_todo;"))
  
  ##
  
  sqlquery_rvo_cond <- rvoCondSqlquery(researcher_schema, cdm_schema, cdm_voca_schema, rvo_concept_id)
  executeSql(conn, sqlquery_rvo_cond) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".rvo_data;"))
  
  sqlquery_rvo_rownum <- rvoRownumSqlquery(researcher_schema)
  executeSql(conn, sqlquery_rvo_rownum) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".rvo_data_rownum;"))
  
  sqlquery_rvo_todo <- rvoDataSqlquery(researcher_schema)
  executeSql(conn, sqlquery_rvo_todo) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".rvo_data_todo;"))
  
  ##
  
  sqlquery_covid_washout <- covidWashoutSqlquery(researcher_schema, "2020-01-01")
  executeSql(conn, sqlquery_covid_washout) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".covid_data_aft_washout;"))
  
  sqlquery_rvo_washout <- rvoWashoutSqlquery(researcher_schema, "2020-01-01")
  executeSql(conn, sqlquery_rvo_washout) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".rvo_data_aft_washout;"))
  
  ##
  
  sqlquery_comorb <- comorbSqlquery(researcher_schema, cdm_schema)
  executeSql(conn, sqlquery_comorb) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".comorbidity;"))
  
  sqlquery_comorb_todo <- comorbTodoSqlquery(researcher_schema, cdm_schema)
  executeSql(conn, sqlquery_comorb_todo) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".comorbidity_todo;"))
  
  ##
  
  sqlquery_cox_todo <- coxDataSqlquery(researcher_schema)
  executeSql(conn, sqlquery_cox_todo) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".cox_data_todo;"))
  
  sqlquery_cox_date <- coxDateSqlquery(researcher_schema, "2020-01-01", "2022-04-30")
  executeSql(conn, sqlquery_cox_date) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".cox_data_date;"))
  
  sqlquery_simple_cox <- coxSimpleSqlquery(researcher_schema)
  executeSql(conn, sqlquery_simple_cox) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".simple_cox;"))
  
  ##
  
  sqlquery_time_dup <- coxTimeDupSqlquery(researcher_schema)
  executeSql(conn, sqlquery_time_dup) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".time_cox_dup;"))
  
  sqlquery_time_todo <- coxTimeDataSqlquery(researcher_schema)
  executeSql(conn, sqlquery_time_todo) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".time_cox_dup_todo;"))
  
  sqlquery_time_row <- coxTimeRowSqlquery(researcher_schema)
  executeSql(conn, sqlquery_time_row) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".time_cox_dup_todo_rownum;"))
  
  sqlquery_time_final <- coxTimeFinSqlquery(researcher_schema)
  executeSql(conn, sqlquery_time_final) 
  # executeSql(conn, paste0("drop table ", researcher_schema, ".time_cox_final;"))
  
}

#############################################################################################

# Check row_num, p_num
check_covid_tb <- querySql(conn, paste0("select count(distinct person_id) as count_p, count(*) as count_n from ", researcher_schema, ".covid_data_all;"))
check_rvo_tb <- querySql(conn, paste0("select count(distinct person_id) as count_p, count(*) as count_n from ", researcher_schema, ".rvo_data;"))
check_covid_tb_wo <- querySql(conn, paste0("select count(distinct person_id) as count_p, count(*) as count_n from ", researcher_schema, ".covid_data_aft_washout;"))
check_rvo_tb_wo <- querySql(conn, paste0("select count(distinct person_id) as count_p, count(*) as count_n from ", researcher_schema, ".rvo_data_aft_washout;"))

check_cmob <- querySql(conn, paste0("select count(distinct person_id) as count_p, count(*) as count_n from ", researcher_schema, ".comorbidity;"))
check_cmob_td <- querySql(conn, paste0("select count(distinct person_id) as count_p, count(*) as count_n from ", researcher_schema, ".comorbidity_todo;"))

check_cox <- querySql(conn, paste0("select count(distinct person_id) as count_p, count(*) as count_n from ", researcher_schema, ".simple_cox;"))
check_time_cox <- querySql(conn, paste0("select count(distinct person_id) as count_p, count(*) as count_n from ", researcher_schema, ".time_cox_final;"))

check_table <- matrix(ncol = 2, byrow = T)
check_table <- data.frame(check_table)
colnames(check_table) <- c("COUNT_PERSON", "COUNT_ROW")
check_table[1,] <- check_covid_tb
check_table[2,] <- check_rvo_tb
check_table[3,] <- check_covid_tb_wo
check_table[4,] <- check_rvo_tb_wo

check_table[5,] <- check_cmob
check_table[6,] <- check_cmob_td

check_table[7,] <- check_cox
check_table[8,] <- check_time_cox

getwd()
write.csv(check_table, "./result_cox/rvo_check_table.csv")

#############################################################################################

# Simple Cox Analysis
simple_cox_data <- querySql(conn, paste0("select * from ", researcher_schema, ".simple_cox;"))
fit1 <- survfit(Surv(STOPP, OUTCOME)~1, data = simple_cox_data)
summary(fit1)
summary_table_simple <- summary(fit1)

getwd()
pdf("./result_cox/rvo_simple_cox_km_plot.pdf", width = 25)
plot(fit1, xlab = "time(days)", ylab = "Survival function", ylim = c(0.995,1)) #plot scale 조정
title(main = "Keplan-Meier survival estimates")
dev.off()

survival_table_simple <- as.data.frame(summary_table_simple[c("time", "n.risk", "n.event", "n.censor", "surv", "cumhaz", "std.chaz", "lower", "upper")])
write.csv(survival_table_simple, "./result_cox/rvo_simple_cox_survival_table.csv")

# Simple Cox Analysis2
fit2 <- survfit(Surv(STOPP, OUTCOME)~ age + factor(gender_concept_id) +
                  factor(HTN) + factor(Diabetes) + factor(ICH) + factor(CVA) + factor(IHD) +
                  factor(CHF) + factor(Tuberculosis) + factor(PAD) + factor(AF) + factor(dyslipidemia)
                , data = simple_cox_data)
summary(fit2)
summary_table_simple2 <- summary(fit2)

getwd()
pdf("./result_cox/rvo_simple_cox_km_plot2.pdf", width = 25)
plot(fit2, xlab = "time(days)", ylab = "Survival function", ylim = c(0.995,1)) #plot scale 조정
title(main = "Keplan-Meier survival estimates")
dev.off()

survival_table_simple2 <- as.data.frame(summary_table_simple2[c("time", "n.risk", "n.event", "n.censor", "surv", "cumhaz", "std.chaz", "lower", "upper")])
write.csv(survival_table_simple2, "./result_cox/rvo_simple_cox_survival_table2.csv")

#############################################################################################

# COVID as Time varying Covariates
timevar_cox_data <- querySql(conn, paste0("select * from ", researcher_schema, ".time_cox_final;"))
fit3 <- coxph(Surv(time = STRT_FINAL, time2 = STOP_FINAL, event = EVENT_FINAL) ~ factor(OUTCOME), data = timevar_cox_data)
summary(fit3)
summary_table_timevar <- summary(fit3)

survival_table_timevar <- as.data.frame(summary_table_timevar[c("n", "nevent", "coefficients", "conf.int")])
getwd()
write.csv(survival_table_timevar, "./result_cox/rvo_timevar_cox_survival_table.csv")

#############################################################################################
# delete DB
{
  deletedata1 <- deleteSqlquery(researcher_schema, "covid_obs_data")
  executeSql(conn, deletedata1)
  deletedata2 <- deleteSqlquery(researcher_schema, "covid_cond_data")
  executeSql(conn, deletedata2)
  deletedata3 <- deleteSqlquery(researcher_schema, "covid_data_all")
  executeSql(conn, deletedata3)
  deletedata4 <- deleteSqlquery(researcher_schema, "covid_data_rownum")
  executeSql(conn, deletedata4)
  deletedata5 <- deleteSqlquery(researcher_schema, "covid_data_todo")
  executeSql(conn, deletedata5)
  deletedata6 <- deleteSqlquery(researcher_schema, "rvo_data")
  executeSql(conn, deletedata6)
  deletedata7 <- deleteSqlquery(researcher_schema, "rvo_data_rownum")
  executeSql(conn, deletedata7)
  deletedata8 <- deleteSqlquery(researcher_schema, "rvo_data_todo")
  executeSql(conn, deletedata8)
  deletedata9 <- deleteSqlquery(researcher_schema, "covid_data_aft_washout")
  executeSql(conn, deletedata9)
  deletedata10 <- deleteSqlquery(researcher_schema, "rvo_data_aft_washout")
  executeSql(conn, deletedata10)
  
  deletedata11 <- deleteSqlquery(researcher_schema, "comorbidity")
  executeSql(conn, deletedata9)
  deletedata12 <- deleteSqlquery(researcher_schema, "comorbidity_todo")
  executeSql(conn, deletedata10)
  
  deletedata13 <- deleteSqlquery(researcher_schema, "cox_data_todo")
  executeSql(conn, deletedata11)
  deletedata14 <- deleteSqlquery(researcher_schema, "cox_data_date")
  executeSql(conn, deletedata12)
  deletedata15 <- deleteSqlquery(researcher_schema, "simple_cox")
  executeSql(conn, deletedata13)
  deletedata16 <- deleteSqlquery(researcher_schema, "time_cox_dup")
  executeSql(conn, deletedata14)
  deletedata17 <- deleteSqlquery(researcher_schema, "time_cox_dup_todo")
  executeSql(conn, deletedata15)
  deletedata18 <- deleteSqlquery(researcher_schema, "time_cox_dup_todo_rownum")
  executeSql(conn, deletedata16)
  deletedata19 <- deleteSqlquery(researcher_schema, "time_cox_final")
  executeSql(conn, deletedata17)
}