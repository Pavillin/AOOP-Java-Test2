import javafx.scene.chart.XYChart;
import javafx.scene.image.Image;

import java.sql.*;
import java.util.ArrayList;

public class DBConnect {
    private static String userName = "student";
    private static String password = "student";

    public static ArrayList<Speaker> getSpeakers() throws SQLException {
        ArrayList<Speaker> Speakers = new ArrayList<>();
        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try{
            //1. connect to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/COMP1011T2S1?useSSL=false",userName, password);

            //2. create a statement object
            statement = conn.createStatement();

            //3. create and execute the query
            resultSet = statement.executeQuery("SELECT * FROM speakers");

            //4. loop over the results and add to the arraylist
            while (resultSet.next()){
                Speaker newSpeaker = new Speaker(
                        resultSet.getInt("speakerID"),
                        resultSet.getString("productName"),
                        resultSet.getString("description"),
                        resultSet.getDouble("price"),
                        new Image(resultSet.getString("image")));
                Speakers.add(newSpeaker);
            }
        }catch(SQLException e){
            System.err.println(e);
        }
        finally{
            if(conn != null){
                conn.close();
            }
            if(statement != null){
                statement.close();
            }
            if(resultSet != null){
                resultSet.close();
            }
        }

        return Speakers;
    }

    public static XYChart.Series getChart(int speakerID) throws SQLException{
        int id = speakerID;
        XYChart.Series sales2018 = new XYChart.Series();
        Connection conn = null;
        Statement statement = null;
        ResultSet resultSet = null;

        try{
            //1. connect to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/COMP1011T2S1?useSSL=false",userName, password);

            //2. create a statement object
            statement = conn.createStatement();

            //3. create and execute the query
            resultSet = statement.executeQuery("SELECT * FROM sales WHERE speakerID = "+id);

            //4. loop over the results and add to data to graph
            while (resultSet.next()){
                sales2018.getData().add(new XYChart.Data(resultSet.getString("monthSold"), resultSet.getInt("unitsSold")));
            }
        }catch(SQLException e){
            System.err.println(e);
        }
        finally{
            if(conn != null){
                conn.close();
            }
            if(statement != null){
                statement.close();
            }
            if(resultSet != null){
                resultSet.close();
            }
        }
        return sales2018;
    }
}
