 DECLARE HORIZON STRING DEFAULT "30"; #number of values to forecast
 DECLARE CONFIDENCE_LEVEL STRING DEFAULT "0.90";

 EXECUTE IMMEDIATE format("""
     SELECT
         *
     FROM
       ML.FORECAST(MODEL bqmlforecast.bike_model,
                   STRUCT(%s AS horizon,
                          %s AS confidence_level)
                  )
     """, HORIZON, CONFIDENCE_LEVEL)