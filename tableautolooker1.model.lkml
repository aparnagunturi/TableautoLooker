connection: "bigquery_verizon"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard"

explore: employee {
  join: employee_hike {
    type: left_outer
    sql_on: ${employee.employee_id} = ${employee_hike.employee_id} ;;
    relationship: one_to_many
  }
}
