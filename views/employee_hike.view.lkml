view: employee_hike {
  sql_table_name: `cg-acis-ind-sandbox.emp.employee_hike` ;;

  dimension: employee_id {
    type: number
    sql: ${TABLE}.EmployeeID ;;
  }
  dimension_group: hike {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.HikeDate ;;
  }
  dimension: hike_id {
    type: number
    sql: ${TABLE}.HikeID ;;
  }
  dimension: new_salary {
    type: number
    sql: ${TABLE}.NewSalary ;;
  }
  dimension: percentage_increase {
    type: number
    sql: ${TABLE}.PercentageIncrease ;;
  }
  dimension: previous_salary {
    type: number
    sql: ${TABLE}.PreviousSalary ;;
  }
  measure: count {
    type: count
  }
}
