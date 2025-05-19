view: verizon {

      derived_table: {

      sql:
      SET @@query_label = "label_key:label_value";
      select * from cg-acis-ind-sandbox.test_sql.department ;;
    }

    measure: count {
      type: count
      drill_fields: [detail*]
    }

    dimension: dep_id {
      type: number
      sql: ${TABLE}.dep_id ;;
    }

    dimension: dep_name {
      type: string
      sql: ${TABLE}.dep_name ;;
    }

    set: detail {
      fields: [
        dep_id,
        dep_name
      ]
    }
  }
