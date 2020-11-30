import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:k8/model/login_response_dto.dart';

class ApiCall{
   String host='https://cors-anywhere.herokuapp.com/http://164.52.198.42:9090/';
  /* String host='http://164.52.198.42:9090/';*/
  Future<LoginResponseDto> LoginviaEmail (String email,String pass) async {
    try {
      var url =host+'k8school/api/v1/common/login';
      Map data = {
        "authentication": {
          "hash": "sladfjlkasldflsaj",
          "userType": "COMMON",
          "userId": "",
          "studentId": "",
          "parentId": ""
        },
        "requestData": {
          "loginDTO": {
            "email": "anujwebhost@gmail.com",
            "password": "123456",
            "captcha": "123456",
            "bypass":"true"
          }
        }
      };
      //encode Map to JSON
      var body = json.encode(data);
      var response = await http.post(url,
          headers: {"Content-Type": "application/json"},
          body: body
      );

      if(response.statusCode== 200){
        print("${response.statusCode}");
        print("${response.body}");
        var res=LoginResponseDto.fromJson(jsonDecode(response.body));
        return res;
      }
    } on SocketException catch (e) {
      throw "Network is unreachable";

    } on HttpException catch (e) {
      throw "Server is unreachable";
    }
    on Exception catch (e) {
      throw e.toString();
    }
    catch (err) {
      print(err);
      return null;
    }
  }
}

