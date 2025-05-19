
view: verizon_emp_dep {
  derived_table: {
    sql: select * from test_sql.employee as emp
      left join test_sql.department as dept
      on emp.dep_id=dept.dep_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: emp_name {
    type: string
    sql: ${TABLE}.emp_name ;;
  }

  dimension: emp_id {
    type: number
    sql: ${TABLE}.emp_id ;;
  }

  dimension: dep_id {
    type: number
    sql: ${TABLE}.dep_id ;;
  }

  dimension: dep_id_1 {
    type: number
    sql: ${TABLE}.dep_id_1 ;;
  }

  dimension: dep_name {
    type: string
    sql: ${TABLE}.dep_name ;;
  }

  set: detail {
    fields: [
        emp_name,
	emp_id,
	dep_id,
	dep_id_1,
	dep_name
    ]
  }
}
