curl --location --request POST 'localhost:8083/connectors' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "employee-connector",
    "config": {
        "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
        "plugin.name": "pgoutput",
        "database.hostname": "172.20.0.1",
        "database.port": "5435",
        "database.user": "postgresuser",
        "database.password": "postgrespw",
        "database.dbname": "shipment_db",
        "database.server.name": "postgres",
        "table.include.list": "public.employee",
        "key.converter": "org.apache.kafka.connect.json.JsonConverter",
        "key.converter.schemas.enable": "false",
        "value.converter": "org.apache.kafka.connect.json.JsonConverter",
        "value.converter.schemas.enable": "false",
        "topic.prefix": "debezium-"
    }
}'
