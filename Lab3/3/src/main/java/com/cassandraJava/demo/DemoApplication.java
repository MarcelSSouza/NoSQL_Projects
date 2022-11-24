package com.cassandraJava.demo;
import com.datastax.driver.core.Cluster;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Session;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(DemoApplication.class, args);
		
		Cluster cluster = Cluster.builder().withoutJMXReporting()
		.addContactPoint("127.0.0.1").build();
        
		Session session = cluster.connect("partilhavideos");
       
		//----------------------------------------------------------------------------INSERT----------------------------------------------------------------------------
		session.execute("INSERT INTO User (email, name, reg_timestamp, username) VALUES ('marcel@marcel.com', 'Titulion123', dateof(now()), 'Titulion');");
        
		System.out.println("Inserted user Titulion");

        ResultSet result = session.execute("SELECT json * FROM User;");
    
        System.out.println(result.all());


		//----------------------------------------------------------------------------UPDATE----------------------------------------------------------------------------
		session.execute("UPDATE User SET  username = 'Toss' WHERE email='user6@bot.com';");
        
		System.out.println("Update user with user6@bot.com email");

        ResultSet resultUpdate = session.execute("SELECT json * FROM User;");
    
        System.out.println(resultUpdate.all());


		//----------------------------------------------------------------------------SEARCH----------------------------------------------------------------------------
        System.out.println("Search for Bot8 User");

        ResultSet resultSearch = session.execute("SELECT * FROM User WHERE name='Bot8' ALLOW FILTERING");
    
        System.out.println(resultSearch.all());




//-------------------------------1---------------------------------------------
		System.out.println("QUERY 1");

        ResultSet query1 = session.execute("select tags from Video where id=08d02de0-69ed-11ed-8b90-8b11f0cc8707;");
    
        System.out.println(query1.all());




//----------------------------------2------------------------------------------
		System.out.println("QUERY 2");

        ResultSet query2 = session.execute("SELECT * FROM Comment_per_video WHERE video_id = 19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d  ORDER BY upload_timestamp DESC LIMIT 3;");
    
        System.out.println(query2.all());



//--------------------------------3--------------------------------------------
		System.out.println("QUERY 3");

        ResultSet query3 = session.execute("SELECT * from Video LIMIT 10;");
    
        System.out.println(query3.all());



//----------------------------------4------------------------------------------
		System.out.println("QUERY 4");

        ResultSet query4 = session.execute("SELECT * FROM Follower WHERE video_id=19e006d0-0d6d-11ea-9d48-0b1cc2ad2f9d;");
    
        System.out.println(query4.all());
	}

}
