
view: verizon {

      derived_table: {

      sql:

      select * from cg-acis-ind-sandbox.test_sql.employee ;;
    }

    measure: count {
      type: count

    }

    dimension: emp_id {
      type: number
      sql: ${TABLE}.emp_id ;;
    }

    dimension: dep_id {
      type: string
      sql: ${TABLE}.dep_id ;;
    }


  }
