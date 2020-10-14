class SubjectListDto {
  StatusResponse _statusResponse;
  List<StudentSubjectDTOList> _studentSubjectDTOList;
  String _studentGraduate;

  StatusResponse get statusResponse => _statusResponse;
  List<StudentSubjectDTOList> get studentSubjectDTOList => _studentSubjectDTOList;
  String get studentGraduate => _studentGraduate;

  SubjectListDto({
      StatusResponse statusResponse, 
      List<StudentSubjectDTOList> studentSubjectDTOList, 
      String studentGraduate}){
    _statusResponse = statusResponse;
    _studentSubjectDTOList = studentSubjectDTOList;
    _studentGraduate = studentGraduate;
}

  SubjectListDto.fromJson(dynamic json) {
    _statusResponse = json["statusResponse"] != null ? StatusResponse.fromJson(json["statusResponse"]) : null;
    if (json["studentSubjectDTOList"] != null) {
      _studentSubjectDTOList = [];
      json["studentSubjectDTOList"].forEach((v) {
        _studentSubjectDTOList.add(StudentSubjectDTOList.fromJson(v));
      });
    }
    _studentGraduate = json["studentGraduate"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_statusResponse != null) {
      map["statusResponse"] = _statusResponse.toJson();
    }
    if (_studentSubjectDTOList != null) {
      map["studentSubjectDTOList"] = _studentSubjectDTOList.map((v) => v.toJson()).toList();
    }
    map["studentGraduate"] = _studentGraduate;
    return map;
  }

}

class StudentSubjectDTOList {
  int _userId;
  int _studentId;
  int _standardId;
  String _standardName;
  String _imgURl;
  int _subjectId;
  dynamic _subjectCreditId;
  dynamic _subjectPlacementId;
  dynamic _subjectCode;
  String _subjectName;
  dynamic _moduleName;
  String _subjectTitle;
  String _subjectIcon;
  String _subjectDesc;
  int _subjectRating;
  String _bgColor;
  String _courseType;
  String _subjectType;
  String _subjectTypeFullName;
  dynamic _twoCourse;
  dynamic _threeCourse;
  dynamic _fourCourse;
  dynamic _fiveCourse;
  dynamic _duration;
  dynamic _preAmount;
  dynamic _courseTwo;
  dynamic _courseThree;
  dynamic _courseFour;
  dynamic _courseFive;
  dynamic _planAmount;
  dynamic _courseTwoStatus;
  dynamic _courseThreeStatus;
  dynamic _courseFourStatus;
  dynamic _courseFiveStatus;
  dynamic _subjectBookStatus;
  dynamic _planId;
  dynamic _remainMeeting;
  dynamic _pendingMesg;
  dynamic _providerId;
  dynamic _studentSessionId;

  int get userId => _userId;
  int get studentId => _studentId;
  int get standardId => _standardId;
  String get standardName => _standardName;
  String get imgURl => _imgURl;
  int get subjectId => _subjectId;
  dynamic get subjectCreditId => _subjectCreditId;
  dynamic get subjectPlacementId => _subjectPlacementId;
  dynamic get subjectCode => _subjectCode;
  String get subjectName => _subjectName;
  dynamic get moduleName => _moduleName;
  String get subjectTitle => _subjectTitle;
  String get subjectIcon => _subjectIcon;
  String get subjectDesc => _subjectDesc;
  int get subjectRating => _subjectRating;
  String get bgColor => _bgColor;
  String get courseType => _courseType;
  String get subjectType => _subjectType;
  String get subjectTypeFullName => _subjectTypeFullName;
  dynamic get twoCourse => _twoCourse;
  dynamic get threeCourse => _threeCourse;
  dynamic get fourCourse => _fourCourse;
  dynamic get fiveCourse => _fiveCourse;
  dynamic get duration => _duration;
  dynamic get preAmount => _preAmount;
  dynamic get courseTwo => _courseTwo;
  dynamic get courseThree => _courseThree;
  dynamic get courseFour => _courseFour;
  dynamic get courseFive => _courseFive;
  dynamic get planAmount => _planAmount;
  dynamic get courseTwoStatus => _courseTwoStatus;
  dynamic get courseThreeStatus => _courseThreeStatus;
  dynamic get courseFourStatus => _courseFourStatus;
  dynamic get courseFiveStatus => _courseFiveStatus;
  dynamic get subjectBookStatus => _subjectBookStatus;
  dynamic get planId => _planId;
  dynamic get remainMeeting => _remainMeeting;
  dynamic get pendingMesg => _pendingMesg;
  dynamic get providerId => _providerId;
  dynamic get studentSessionId => _studentSessionId;

  StudentSubjectDTOList({
      int userId, 
      int studentId, 
      int standardId, 
      String standardName, 
      String imgURl, 
      int subjectId, 
      dynamic subjectCreditId, 
      dynamic subjectPlacementId, 
      dynamic subjectCode, 
      String subjectName, 
      dynamic moduleName, 
      String subjectTitle, 
      String subjectIcon, 
      String subjectDesc, 
      int subjectRating, 
      String bgColor, 
      String courseType, 
      String subjectType, 
      String subjectTypeFullName, 
      dynamic twoCourse, 
      dynamic threeCourse, 
      dynamic fourCourse, 
      dynamic fiveCourse, 
      dynamic duration, 
      dynamic preAmount, 
      dynamic courseTwo, 
      dynamic courseThree, 
      dynamic courseFour, 
      dynamic courseFive, 
      dynamic planAmount, 
      dynamic courseTwoStatus, 
      dynamic courseThreeStatus, 
      dynamic courseFourStatus, 
      dynamic courseFiveStatus, 
      dynamic subjectBookStatus, 
      dynamic planId, 
      dynamic remainMeeting, 
      dynamic pendingMesg, 
      dynamic providerId, 
      dynamic studentSessionId}){
    _userId = userId;
    _studentId = studentId;
    _standardId = standardId;
    _standardName = standardName;
    _imgURl = imgURl;
    _subjectId = subjectId;
    _subjectCreditId = subjectCreditId;
    _subjectPlacementId = subjectPlacementId;
    _subjectCode = subjectCode;
    _subjectName = subjectName;
    _moduleName = moduleName;
    _subjectTitle = subjectTitle;
    _subjectIcon = subjectIcon;
    _subjectDesc = subjectDesc;
    _subjectRating = subjectRating;
    _bgColor = bgColor;
    _courseType = courseType;
    _subjectType = subjectType;
    _subjectTypeFullName = subjectTypeFullName;
    _twoCourse = twoCourse;
    _threeCourse = threeCourse;
    _fourCourse = fourCourse;
    _fiveCourse = fiveCourse;
    _duration = duration;
    _preAmount = preAmount;
    _courseTwo = courseTwo;
    _courseThree = courseThree;
    _courseFour = courseFour;
    _courseFive = courseFive;
    _planAmount = planAmount;
    _courseTwoStatus = courseTwoStatus;
    _courseThreeStatus = courseThreeStatus;
    _courseFourStatus = courseFourStatus;
    _courseFiveStatus = courseFiveStatus;
    _subjectBookStatus = subjectBookStatus;
    _planId = planId;
    _remainMeeting = remainMeeting;
    _pendingMesg = pendingMesg;
    _providerId = providerId;
    _studentSessionId = studentSessionId;
}

  StudentSubjectDTOList.fromJson(dynamic json) {
    _userId = json["userId"];
    _studentId = json["studentId"];
    _standardId = json["standardId"];
    _standardName = json["standardName"];
    _imgURl = json["imgURl"];
    _subjectId = json["subjectId"];
    _subjectCreditId = json["subjectCreditId"];
    _subjectPlacementId = json["subjectPlacementId"];
    _subjectCode = json["subjectCode"];
    _subjectName = json["subjectName"];
    _moduleName = json["moduleName"];
    _subjectTitle = json["subjectTitle"];
    _subjectIcon = json["subjectIcon"];
    _subjectDesc = json["subjectDesc"];
    _subjectRating = json["subjectRating"];
    _bgColor = json["bgColor"];
    _courseType = json["courseType"];
    _subjectType = json["subjectType"];
    _subjectTypeFullName = json["subjectTypeFullName"];
    _twoCourse = json["twoCourse"];
    _threeCourse = json["threeCourse"];
    _fourCourse = json["fourCourse"];
    _fiveCourse = json["fiveCourse"];
    _duration = json["duration"];
    _preAmount = json["preAmount"];
    _courseTwo = json["courseTwo"];
    _courseThree = json["courseThree"];
    _courseFour = json["courseFour"];
    _courseFive = json["courseFive"];
    _planAmount = json["planAmount"];
    _courseTwoStatus = json["courseTwoStatus"];
    _courseThreeStatus = json["courseThreeStatus"];
    _courseFourStatus = json["courseFourStatus"];
    _courseFiveStatus = json["courseFiveStatus"];
    _subjectBookStatus = json["subjectBookStatus"];
    _planId = json["planId"];
    _remainMeeting = json["remainMeeting"];
    _pendingMesg = json["pendingMesg"];
    _providerId = json["providerId"];
    _studentSessionId = json["studentSessionId"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userId"] = _userId;
    map["studentId"] = _studentId;
    map["standardId"] = _standardId;
    map["standardName"] = _standardName;
    map["imgURl"] = _imgURl;
    map["subjectId"] = _subjectId;
    map["subjectCreditId"] = _subjectCreditId;
    map["subjectPlacementId"] = _subjectPlacementId;
    map["subjectCode"] = _subjectCode;
    map["subjectName"] = _subjectName;
    map["moduleName"] = _moduleName;
    map["subjectTitle"] = _subjectTitle;
    map["subjectIcon"] = _subjectIcon;
    map["subjectDesc"] = _subjectDesc;
    map["subjectRating"] = _subjectRating;
    map["bgColor"] = _bgColor;
    map["courseType"] = _courseType;
    map["subjectType"] = _subjectType;
    map["subjectTypeFullName"] = _subjectTypeFullName;
    map["twoCourse"] = _twoCourse;
    map["threeCourse"] = _threeCourse;
    map["fourCourse"] = _fourCourse;
    map["fiveCourse"] = _fiveCourse;
    map["duration"] = _duration;
    map["preAmount"] = _preAmount;
    map["courseTwo"] = _courseTwo;
    map["courseThree"] = _courseThree;
    map["courseFour"] = _courseFour;
    map["courseFive"] = _courseFive;
    map["planAmount"] = _planAmount;
    map["courseTwoStatus"] = _courseTwoStatus;
    map["courseThreeStatus"] = _courseThreeStatus;
    map["courseFourStatus"] = _courseFourStatus;
    map["courseFiveStatus"] = _courseFiveStatus;
    map["subjectBookStatus"] = _subjectBookStatus;
    map["planId"] = _planId;
    map["remainMeeting"] = _remainMeeting;
    map["pendingMesg"] = _pendingMesg;
    map["providerId"] = _providerId;
    map["studentSessionId"] = _studentSessionId;
    return map;
  }

}

class StatusResponse {
  String _status;
  dynamic _userType;
  String _statusCode;
  dynamic _message;

  String get status => _status;
  dynamic get userType => _userType;
  String get statusCode => _statusCode;
  dynamic get message => _message;

  StatusResponse({
      String status, 
      dynamic userType, 
      String statusCode, 
      dynamic message}){
    _status = status;
    _userType = userType;
    _statusCode = statusCode;
    _message = message;
}

  StatusResponse.fromJson(dynamic json) {
    _status = json["status"];
    _userType = json["userType"];
    _statusCode = json["statusCode"];
    _message = json["message"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["status"] = _status;
    map["userType"] = _userType;
    map["statusCode"] = _statusCode;
    map["message"] = _message;
    return map;
  }

}