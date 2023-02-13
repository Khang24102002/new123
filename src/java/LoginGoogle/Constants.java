/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package LoginGoogle;

/**
 *
 * @author admin
 */
public class Constants {
    public static String GOOGLE_CLIENT_ID = "132232716347-4mei2t22s3sups70fqi7u2ub30mrv5nr.apps.googleusercontent.com";

	public static String GOOGLE_CLIENT_SECRET = "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";

	public static String GOOGLE_REDIRECT_URI = "http://localhost:9999/OnlineLearning/LoginGoogleHandler";

	public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";

	public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";

	public static String GOOGLE_GRANT_TYPE = "authorization_code";
}
