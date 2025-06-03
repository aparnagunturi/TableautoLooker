view: employee {
  sql_table_name: `cg-acis-ind-sandbox.emp.employee` ;;
  drill_fields: [employee_id]

  dimension: employee_id {
    label: "Employee ID"
    primary_key: yes
    type: number
    sql: ${TABLE}.EmployeeID ;;
  }
  dimension_group: birth {
    type: time
    label: "Birth Date"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BirthDate ;;
  }
  dimension: first_name {
    label: "First Name"
    type: string
    sql: ${TABLE}.FirstName ;;
  }
  dimension_group: hire {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.HireDate ;;
  }
  dimension: last_name {
    label: "Last Name"
    type: string
    sql: ${TABLE}.LastName ;;
  }
  dimension: position {
    type: string
    sql: ${TABLE}.Position ;;
  }
  measure: count {
    type: count
    drill_fields: [employee_id, first_name, last_name, employee_hike.count]
  }
}
