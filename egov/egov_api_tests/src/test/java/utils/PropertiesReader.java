package utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesReader {
    private Properties prop = new Properties();

    public PropertiesReader() {
        try {
            String propertiesFilePath = "endPoints.properties";
            InputStream inputStream = this.getClass().getClassLoader().getResourceAsStream(propertiesFilePath);

            prop.load(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public String getEstimateBookingUrl() {
        return prop.getProperty("estimateBookingUrl");
    }

    public String getCreateBookingUrl() {
        return prop.getProperty("createBookingUrl");
    }


}

