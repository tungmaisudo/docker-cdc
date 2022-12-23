curl --location --request POST 'http://localhost:28083/connectors' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "quickstart-jdbc-source-update-1",
    "config": {
        "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
        "tasks.max": 1,
        "connection.url": "jdbc:mysql://mysql:3306/connect_test",
        "connection.user": "root",
        "connection.password": "test",
        "mode": "timestamp",
        "incrementing.column.name": "id",
        "timestamp.column.name": "modified",
        "topic.prefix": "quickstart-jdbc-update-",
        "poll.interval.ms": 1000,
        "table.whitelist": "test",
        "table.poll.interval.ms": "6000",
        "timestamp.initial": "-1"
    }
}'
