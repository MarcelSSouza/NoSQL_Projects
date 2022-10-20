package com.restaurantsdb;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.bson.Document;
import org.bson.conversions.Bson;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

public class App {
    public static void main(String[] args) {
        // inicia um cliente do MongoDB e conecta ao banco de dados restaurants
        MongoClient db = MongoClients.create();
        MongoDatabase restaurants = db.getDatabase("restaurants");
        System.out.println("Conectado ao banco de dados restaurants");
        MongoCollection<Document> collection = restaurants.getCollection("restaurants");
        getRestWithNameCloserTo(collection,"Park");
    }

    public static void insertOneRestaurant(MongoCollection<Document> collection, String building, String latit,
            String longit, String rua, String zipcode, String localidade, String gastronomia, Date data, String grade,
            Integer score, String nome, String restaurant_id) {
        Document doc = new Document("address",
                new Document("building", building).append("coord", new Document("lat", latit).append("long", longit))
                        .append("rua", rua).append("zipcode", zipcode))
                .append("localidade", localidade).append("gastronomia", gastronomia)
                .append("grades", new Document("date", data).append("grade", grade).append("score", score))
                .append("nome", nome).append("restaurant_id", restaurant_id);
        collection.insertOne(doc);
    }

    // now a function to update a document using all the fields

    public static void updateDocument(MongoCollection<Document> collection, String building, String latit,
            String longit, String rua, String zipcode, String localidade, String gastronomia, Date data, String grade,
            Integer score, String nome, String restaurant_id) {
        Document doc = new Document("address",
                new Document("building", building).append("coord", new Document("lat", latit).append("long", longit))
                        .append("rua", rua).append("zipcode", zipcode))
                .append("localidade", localidade).append("gastronomia", gastronomia)
                .append("grades", new Document("date", data).append("grade", grade).append("score", score))
                .append("nome", nome).append("restaurant_id", restaurant_id);
        collection.updateOne(new Document("restaurant_id", restaurant_id), new Document("$set", doc));
    }

    // now a function that searches using a particular name of restaurant
    public static Document searchByName(MongoCollection<Document> collection, String nome) {
        Bson bsonFilter = Filters.eq("nome", nome);
        Document found = collection.find(bsonFilter).first();
        return found;
    }

    // parte do exercicio 2.4 C Liste todos os documentos da coleção
    public static void printAll(MongoCollection<Document> collection) {
        for (Document doc : collection.find()) {
            System.out.println(doc.toJson());
        }
        System.out.println("\n\n\n\n");
        System.out.println("Número de documentos na coleção restaurants: " + collection.countDocuments());
    }
    // parte do exercicio 2.4 C Indique o total de restaurantes localizados no Bronx
    public static void restaurantsinBronx(MongoCollection<Document> collection){
        Bson bsonFilter = Filters.eq("localidade", "Bronx");
        Integer total= 0;
        for (Document doc : collection.find(bsonFilter)) {
            System.out.println(doc.toJson());
            total++;
        }
        System.out.println("\n\n\n\n");
        System.out.println("Número de restaurants no Bronx: " + total);
    }
    // parte do exercicio 2.4 C Liste todos os restaurantes que tenham pelo menos um score superior a 85.
    public static void restaurantsScore(MongoCollection<Document> collection){
        Bson bsonFilter = Filters.gt("grades.score", 85);
        Integer total= 0;
        for (Document doc : collection.find(bsonFilter)) {
            System.out.println(doc.toJson());
            total++;
        }
        System.out.println("\n\n\n\n");
        System.out.println("Número de restaurants com score superior a 85: " + total);
    }


   

    // parte do exercicio 2.4 C
    public static List<String> getRestWithNameCloserTo(MongoCollection<Document> collection, String name) {
        List<String> names = new ArrayList<>();
        Bson bsonFilter = Filters.regex("nome", name);
        for (Document doc : collection.find(bsonFilter)) {
            names.add(doc.getString("nome"));
        }
        System.out.println(names);
        return names;

    }

 // parte do exercicio 2.4 C
    public static Map<String, Integer> countRestByLocalidade(MongoCollection<Document> collection) {
        Map<String, Integer> map = new HashMap<>();
        for (Document doc : collection.find()) {
            String localidade = doc.getString("localidade");
            if (map.containsKey(localidade)) {
                map.put(localidade, map.get(localidade) + 1);
            } else {
                map.put(localidade, 1);
            }
        }
        System.out.println(map);
        return map;
    }

    public static int countDifferentLocalidades(MongoCollection<Document> collection) {
        return countRestByLocalidade(collection).size();
    }
}
// Exercicio 2.4 B
// db.restaurants.createIndex({"localidade":1})
// db.restaurants.createIndex({"gastronomia":1})
// db.restaurants.createIndex({"nome":"text"})