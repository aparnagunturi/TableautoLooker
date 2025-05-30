view: orders {
  sql_table_name: `cg-acis-ind-sandbox.demo_dataset.orders` ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderID ;;
  }
  dimension: order_date {
    type: date
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: order_name {
    type: string
    sql: ${TABLE}.OrderName ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.Price ;;
  }

}
