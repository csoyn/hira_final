condition_visit_source <- function(source_value, start_date="") {
  # 기본 sql문 토대
  # from 뒤 띄어쓰기 필수
  sql_1 <- "select a.person_id, a.condition_concept_id, a.condition_start_date, a.condition_source_value, a.visit_occurrence_id, b.visit_concept_id, b.visit_start_date, b.visit_end_date, b.total_paid, b.paid_by_payer, b.paid_by_patient from " 
  sql_2 <- "condition_occurrence_covid19 a left join  "
  sql_3 <- "visit_occurrence b on (a.visit_occurrence_id=b.visit_occurrence_id) where a.CONDITION_SOURCE_VALUE ~ ("
  # 인자 setting
  cdm_schema <- paste0(cdm_schema, '.')  # sql문에는 .이 들어가야함  
  cdm_voca_schema <- paste0(cdm_voca_schema, '.')
  source_value <- source_value
  # START_DATE가 입력 되어진 경우
  if (start_date!="") {
    sql_4 <- "and condition_start_date >"
    start_date <- paste0("TO_DATE('", start_date, "', 'YYYY-MM-DD')") # sql문에 맞는 형태로 변환
    return (
       data = querySql(conn, paste0(sql_1, cdm_schema, sql_2, cdm_schema, sql_3, source_value, ')', sql_4, start_date, ');'))
    )
  }
  # START_DATE가 없는 경우(if문 탈출)
  return (
      data = querySql(conn, paste0(sql_1, cdm_schema, sql_2, cdm_schema, sql_3, source_value, ');'))
  )
}

proce_visit_source <- function(source_value, start_date="") {
  # 기본 sql문 토대
  # from 뒤 띄어쓰기 필수
  sql_1 <- "select person_id, procedure_concept_id, procedure_date, visit_occurrence_id from " 
  sql_2 <- "procedure_occurrence a where a.procedure_source_value ~ ("
  # 인자 setting
  cdm_schema <- paste0(cdm_schema, '.')  # sql문에는 .이 들어가야함  
  cdm_voca_schema <- paste0(cdm_voca_schema, '.')
  source_value <- source_value
  # START_DATE가 입력 되어진 경우
  if (start_date!="") {
    sql_4 <- "and procedure_date >"
    start_date <- paste0("TO_DATE('", start_date, "', 'YYYY-MM-DD')") # sql문에 맞는 형태로 변환
    return (
        data = querySql(conn, paste0(sql_1, cdm_schema, sql_2, source_value, ')', sql_4, start_date, ');'))
    )
  }
  # START_DATE가 없는 경우(if문 탈출)
  return (
      data = querySql(conn, paste0(sql_1, cdm_schema, sql_2, source_value, ');'))

  )
}
