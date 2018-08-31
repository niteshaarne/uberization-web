package com.uberization.service;

import java.util.HashMap;
import java.util.Map;

import com.twilio.Twilio;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class TwilioSMSService {
	
	public static final String ACCOUNT_SID =
            "ACcdf96f0ecb7a409e42494f934c8f82dd";
    public static final String AUTH_TOKEN =
            "e908b559e14df9dc39dbb354a3ea50da";
    public static final String TWILIO_NUMBER = "+15867881147";
            //"(586) 788-1147";

    public static void main(String[] args) {
        /*Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message
                .creator(new PhoneNumber("+14159352345"), // to
                        new PhoneNumber("+14158141829"), // from
                        "Where's Wallace?")
                .create();

        System.out.println(message.getSid());*/
    	
    	
    	/*TwilioRestClient twilioRestClient = new TwilioRestClient(System.getenv(ACCOUNT_SID), System.getenv(AUTH_TOKEN));
    	Account account = twilioRestClient.getAccount();
    	SmsFactory factory = account.getSmsFactory();
    	Map<String, String> message = new HashMap<String, String>();
    	message.put("To", "+919503340892");
    	message.put("From", "+919561154827");
    	message.put("Body", "This is a test message");
    	try {
			factory.create(message);
		} catch (TwilioRestException e) {
			e.printStackTrace();
		}*/
    	
    	Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
    	Message message = Message.creator(
    	    new PhoneNumber("+919503340892"),//twilio.com/user/account/phone-numbers/verified
    	    new PhoneNumber(TWILIO_NUMBER),
    	    "Sample Twilio SMS using Java")
    	.create();
    	System.out.println(message);
    	//Message{accountSid=ACcdf96f0ecb7a409e42494f934c8f82dd, apiVersion=2010-04-01, body=Sent from your Twilio trial account - Sample Twilio SMS using Java, dateCreated=2018-08-30T17:19:08.000Z, dateUpdated=2018-08-30T17:19:08.000Z, dateSent=null, direction=outbound-api, errorCode=null, errorMessage=null, from=+15867881147, messagingServiceSid=null, numMedia=0, numSegments=1, price=null, priceUnit=USD, sid=SM1cf8ded1687647158acacf3dd67e2e96, status=queued, subresourceUris={media=/2010-04-01/Accounts/ACcdf96f0ecb7a409e42494f934c8f82dd/Messages/SM1cf8ded1687647158acacf3dd67e2e96/Media.json}, to=+919503340892, uri=/2010-04-01/Accounts/ACcdf96f0ecb7a409e42494f934c8f82dd/Messages/SM1cf8ded1687647158acacf3dd67e2e96.json}

    }

}
