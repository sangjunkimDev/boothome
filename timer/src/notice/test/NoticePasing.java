package notice.test;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.io.BufferedReader;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;

public class NoticePasing {
	public static int INDENT_FACTOR = 4;
	public static String pasing() throws IOException, JSONException {
   
        StringBuilder urlBuilder = new StringBuilder("http://openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=pFgcEMtxZueqIzaDsd4rZ4yVCaBNK2t68oBu3BUwEcNDsPU6tXmQGP79pqPJtgq3oLfNz42UgdO2cmu2s9nrlg%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("bgnde","UTF-8") + "=" + URLEncoder.encode("20170716", "UTF-8")); /*�쑀湲곕궇吏� (寃��깋 �떆�옉�씪) (YYYYMMDD) */
        urlBuilder.append("&" + URLEncoder.encode("endde","UTF-8") + "=" + URLEncoder.encode("20170718", "UTF-8")); /*�쑀湲곕궇吏� (寃��깋 醫낅즺�씪) (YYYYMMDD) */
        urlBuilder.append("&" + URLEncoder.encode("upkind","UTF-8") + "=" + URLEncoder.encode("417000", "UTF-8")); /*異뺤쥌肄붾뱶 - 媛� : 417000 - 怨좎뼇�씠 : 422400 - 湲고� : 429900 */
        urlBuilder.append("&" + URLEncoder.encode("kind","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*�뭹醫낆퐫�뱶 (�뭹醫� 議고쉶 OPEN API 李몄“) */
        urlBuilder.append("&" + URLEncoder.encode("upr_cd","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*�떆�룄肄붾뱶 (�떆�룄 議고쉶 OPEN API 李몄“) */
        urlBuilder.append("&" + URLEncoder.encode("org_cd","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*�떆援곌뎄肄붾뱶 (�떆援곌뎄 議고쉶 OPEN API 李몄“) */
        urlBuilder.append("&" + URLEncoder.encode("care_reg_no","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*蹂댄샇�냼踰덊샇 (蹂댄샇�냼 議고쉶 OPEN API 李몄“) */
        urlBuilder.append("&" + URLEncoder.encode("state","UTF-8") + "=" + URLEncoder.encode("notice", "UTF-8")); /*�긽�깭 - �쟾泥� : null(鍮덇컪) - 怨듦퀬以� : notice - 蹂댄샇以� : protect */
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*�럹�씠吏� 踰덊샇*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /*�럹�씠吏��떦 蹂댁뿬以� 媛쒖닔*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        String xml = sb.toString();
        System.out.println(xml);
        
        JSONObject xmlJSONObj = XML.toJSONObject(sb.toString());
        String jsonPrettyPrintString = xmlJSONObj.toString(INDENT_FACTOR);
        Iterator i = xmlJSONObj.keys();
        System.out.println();
        //System.out.println(xmlJSONObj.get("pageNo").toString());
        //String data1 = xmlJSONObj.get("profile").toString();
        //System.out.println(data1);
//        System.out.println(xmlJSONObj."pageNo");
		return jsonPrettyPrintString;
        
        
      
        
    }
}