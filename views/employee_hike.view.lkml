view: employee_hike {
  sql_table_name: `cg-acis-ind-sandbox.emp.employee_hike` ;;

  dimension: employee_id {
    label: "EmployeeID (employee hike)"
    type: number
    sql: ${TABLE}.EmployeeID ;;
  }
  dimension: hike {
    label: "Hike Date"
    type: date
    sql: ${TABLE}.HikeDate ;;
  }
  dimension: hike_id {
    label: "Hike ID"
    type: number
    sql: ${TABLE}.HikeID ;;
  }
  measure: new_salary {
    label: "New Salary"
    type: sum
    sql: ${TABLE}.NewSalary ;;
  }
  measure: percentage_increase {
    label: "Percentage Increase"
    type: sum
    sql: ${TABLE}.PercentageIncrease ;;
    value_format_name: "decimal_2"
  }
  measure: previous_salary {
    label: "Previous Salary"
    type: sum
    sql: ${TABLE}.PreviousSalary ;;
  }

}
