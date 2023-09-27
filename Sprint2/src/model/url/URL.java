package model.url;

public class URL {

    static String url = "http://localhost:8081/sprint2_cluster/";

    public static String baseUrl(String path) {
        return url + path;
    }
    
}
