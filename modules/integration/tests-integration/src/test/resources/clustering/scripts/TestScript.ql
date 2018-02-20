CREATE TEMPORARY TABLE ANALYTICS_SCRIPTS_TEST USING CarbonAnalytics OPTIONS ( tableName "ANALYTICS_SCRIPTS_TEST",
schema "server_name string -i, ip STRING -i, tenant INTEGER -i, sequence LONG -i, summary STRING -i" );

CREATE TEMPORARY TABLE ANALYTICS_SCRIPTS_TEST2 USING CarbonAnalytics OPTIONS ( tableName "ANALYTICS_SCRIPTS_TEST2",
schema "server_name string -i, ip STRING -i, tenant INTEGER -i, sequence LONG -i, summary STRING -i" );

CREATE TEMPORARY TABLE ANALYTICS_SCRIPTS_TEST_IPS USING CarbonAnalytics OPTIONS ( tableName "ANALYTICS_SCRIPTS_TEST_IPS",
schema "ip STRING -i" );

insert overwrite table ANALYTICS_SCRIPTS_TEST2 SELECT * FROM ANALYTICS_SCRIPTS_TEST;

insert overwrite table ANALYTICS_SCRIPTS_TEST_IPS SELECT ip FROM ANALYTICS_SCRIPTS_TEST;