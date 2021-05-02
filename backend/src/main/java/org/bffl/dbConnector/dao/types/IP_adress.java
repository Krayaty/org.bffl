package org.bffl.dbConnector.dao.types;

import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Embeddable;
import java.security.InvalidParameterException;
import java.util.Objects;

@Getter
@NoArgsConstructor
public class IP_adress {

    private int firstPart;
    private int secondPart;
    private int thirdPart;
    private int fourthPart;

    public IP_adress(int firstPart, int secondPart, int thirdPart, int fourthPart){
        if(!isValidIp(firstPart, secondPart, thirdPart, fourthPart)){
            throw new InvalidParameterException("The given Parameters firstPart:" + firstPart +
                    ", secondPart:" + secondPart + ", thirdPart: " + thirdPart + ", fourthPart: " + fourthPart +
                    "can't be used to create a valid IP-adress");
        }
        this.firstPart = firstPart;
        this.secondPart = secondPart;
        this.thirdPart = thirdPart;
        this.fourthPart = fourthPart;
    }

    public IP_adress(String ip){
        int firstPart = -1;
        int secondPart = -1;
        int thirdPart = -1;
        int fourthPart = -1;

        String [] ipParts = ip.split(".");
        if(ipParts != null && ipParts.length > 0 && ipParts.length != 4) {
            String errormsg = "The given Parameters: " + ipParts[0];
            for(int i = 1; i < ipParts.length; i++){
                errormsg += ", " + ipParts[i];
            }
            errormsg += " do not match the pattern [192-233]\\.[1-255]\\.[1-255]\\.[1-255]";
            throw new InvalidParameterException(errormsg);
        }

        firstPart = Integer.parseInt(ipParts[0]);
        secondPart = Integer.parseInt(ipParts[1]);
        thirdPart = Integer.parseInt(ipParts[2]);
        fourthPart = Integer.parseInt(ipParts[3]);

        if(!isValidIp(firstPart, secondPart, thirdPart, fourthPart)){
            throw new InvalidParameterException("The given Parameters firstPart:" + firstPart +
                    ", secondPart:" + secondPart + ", thirdPart: " + thirdPart + ", fourthPart: " + fourthPart +
                    "can't be used to create a valid IP-adress");
        }
        this.firstPart = firstPart;
        this.secondPart = secondPart;
        this.thirdPart = thirdPart;
        this.fourthPart = fourthPart;
    }

    public String toString(){
        return this.firstPart + "." + this.secondPart + "." + this.thirdPart + "." + this.fourthPart;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        IP_adress ip_adress = (IP_adress) o;
        return firstPart == ip_adress.firstPart && secondPart == ip_adress.secondPart && thirdPart == ip_adress.thirdPart && fourthPart == ip_adress.fourthPart;
    }

    @Override
    public int hashCode() {
        return Objects.hash(firstPart, secondPart, thirdPart, fourthPart);
    }

    public static boolean isValidIp(int firstPart, int secondPart, int thirdPart, int fourthPart){
        if(!(firstPart >= 192 && firstPart <= 233)){
            return false;
        }

        if(!(secondPart >= 0 && secondPart <= 255)){
            return false;
        }

        if(!(thirdPart >= 0 && thirdPart <= 255)){
            return false;
        }

        if(!(fourthPart >= 0 && fourthPart <= 255)){
            return false;
        }

        return true;
    }

}
