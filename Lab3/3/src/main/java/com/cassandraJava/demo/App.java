package com.cassandraJava.demo;

import org.junit.Before;

public class App {
    //Connect to Cassandra cluster runnig on localhost
    private static final String NODE = "localhost";
    private static final Integer PORT = 9042;
    
    private CassandraConnector client;

    @Before
    public void setUp() {
        client = new CassandraConnector();
        client.connect(NODE, PORT);
    }

    public static void main(String[] args) {
        App app = new App();
        app.setUp();

        //Create a new keyspace
        String query = "CREATE KEYSPACE IF NOT EXISTS mykeyspace WITH replication "
                + "= {'class':'SimpleStrategy', 'replication_factor':1};";
        app.client.getSession().execute(query);
    }
}
