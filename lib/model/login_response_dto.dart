class LoginResponseDto {
  String _status;
  dynamic _userType;
  String _statusCode;
  String _message;
  ResponseData _responseData;
  dynamic _mastersData;
  ResponseLoginDTO _responseLoginDTO;
  dynamic _attendaceDTO;
  dynamic _extra;
  dynamic _dashboardDTO;
  dynamic _dashboardCommonDTO;
  dynamic _dashboardSchoolUtil;
  dynamic _extra1;
  dynamic _signupParentDTO;
  dynamic _studentList;
  dynamic _courseByGradeAndCourseIdList;
  dynamic _courseForPlacementList;
  dynamic _paymentGateway;
  dynamic _smoovPayData;
  dynamic _razorPayData;
  dynamic _modulesDTO;
  dynamic _roleDTO;
  dynamic _extra11;
  dynamic _meetingUrl;

  String get status => _status;
  dynamic get userType => _userType;
  String get statusCode => _statusCode;
  String get message => _message;
  ResponseData get responseData => _responseData;
  dynamic get mastersData => _mastersData;
  ResponseLoginDTO get responseLoginDTO => _responseLoginDTO;
  dynamic get attendaceDTO => _attendaceDTO;
  dynamic get extra => _extra;
  dynamic get dashboardDTO => _dashboardDTO;
  dynamic get dashboardCommonDTO => _dashboardCommonDTO;
  dynamic get dashboardSchoolUtil => _dashboardSchoolUtil;
  dynamic get extra1 => _extra1;
  dynamic get signupParentDTO => _signupParentDTO;
  dynamic get studentList => _studentList;
  dynamic get courseByGradeAndCourseIdList => _courseByGradeAndCourseIdList;
  dynamic get courseForPlacementList => _courseForPlacementList;
  dynamic get paymentGateway => _paymentGateway;
  dynamic get smoovPayData => _smoovPayData;
  dynamic get razorPayData => _razorPayData;
  dynamic get modulesDTO => _modulesDTO;
  dynamic get roleDTO => _roleDTO;
  dynamic get extra11 => _extra11;
  dynamic get meetingUrl => _meetingUrl;

  LoginResponse({
      String status, 
      dynamic userType, 
      String statusCode, 
      String message, 
      ResponseData responseData, 
      dynamic mastersData, 
      ResponseLoginDTO responseLoginDTO, 
      dynamic attendaceDTO, 
      dynamic extra, 
      dynamic dashboardDTO, 
      dynamic dashboardCommonDTO, 
      dynamic dashboardSchoolUtil, 
      dynamic extra1, 
      dynamic signupParentDTO, 
      dynamic studentList, 
      dynamic courseByGradeAndCourseIdList, 
      dynamic courseForPlacementList, 
      dynamic paymentGateway, 
      dynamic smoovPayData, 
      dynamic razorPayData, 
      dynamic modulesDTO, 
      dynamic roleDTO, 
      dynamic extra11, 
      dynamic meetingUrl}){
    _status = status;
    _userType = userType;
    _statusCode = statusCode;
    _message = message;
    _responseData = responseData;
    _mastersData = mastersData;
    _responseLoginDTO = responseLoginDTO;
    _attendaceDTO = attendaceDTO;
    _extra = extra;
    _dashboardDTO = dashboardDTO;
    _dashboardCommonDTO = dashboardCommonDTO;
    _dashboardSchoolUtil = dashboardSchoolUtil;
    _extra1 = extra1;
    _signupParentDTO = signupParentDTO;
    _studentList = studentList;
    _courseByGradeAndCourseIdList = courseByGradeAndCourseIdList;
    _courseForPlacementList = courseForPlacementList;
    _paymentGateway = paymentGateway;
    _smoovPayData = smoovPayData;
    _razorPayData = razorPayData;
    _modulesDTO = modulesDTO;
    _roleDTO = roleDTO;
    _extra11 = extra11;
    _meetingUrl = meetingUrl;
}

  LoginResponseDto.fromJson(dynamic json) {
    _status = json["status"];
    _userType = json["userType"];
    _statusCode = json["statusCode"];
    _message = json["message"];
    _responseData = json["responseData"] != null ? ResponseData.fromJson(json["responseData"]) : null;
    _mastersData = json["mastersData"];
    _responseLoginDTO = json["responseLoginDTO"] != null ? ResponseLoginDTO.fromJson(json["responseLoginDTO"]) : null;
    _attendaceDTO = json["attendaceDTO"];
    _extra = json["extra"];
    _dashboardDTO = json["dashboardDTO"];
    _dashboardCommonDTO = json["dashboardCommonDTO"];
    _dashboardSchoolUtil = json["dashboardSchoolUtil"];
    _extra1 = json["extra1"];
    _signupParentDTO = json["signupParentDTO"];
    _studentList = json["studentList"];
    _courseByGradeAndCourseIdList = json["courseByGradeAndCourseIdList"];
    _courseForPlacementList = json["courseForPlacementList"];
    _paymentGateway = json["paymentGateway"];
    _smoovPayData = json["smoovPayData"];
    _razorPayData = json["razorPayData"];
    _modulesDTO = json["modulesDTO"];
    _roleDTO = json["roleDTO"];
    _extra11 = json["extra11"];
    _meetingUrl = json["meetingUrl"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["status"] = _status;
    map["userType"] = _userType;
    map["statusCode"] = _statusCode;
    map["message"] = _message;
    if (_responseData != null) {
      map["responseData"] = _responseData.toJson();
    }
    map["mastersData"] = _mastersData;
    if (_responseLoginDTO != null) {
      map["responseLoginDTO"] = _responseLoginDTO.toJson();
    }
    map["attendaceDTO"] = _attendaceDTO;
    map["extra"] = _extra;
    map["dashboardDTO"] = _dashboardDTO;
    map["dashboardCommonDTO"] = _dashboardCommonDTO;
    map["dashboardSchoolUtil"] = _dashboardSchoolUtil;
    map["extra1"] = _extra1;
    map["signupParentDTO"] = _signupParentDTO;
    map["studentList"] = _studentList;
    map["courseByGradeAndCourseIdList"] = _courseByGradeAndCourseIdList;
    map["courseForPlacementList"] = _courseForPlacementList;
    map["paymentGateway"] = _paymentGateway;
    map["smoovPayData"] = _smoovPayData;
    map["razorPayData"] = _razorPayData;
    map["modulesDTO"] = _modulesDTO;
    map["roleDTO"] = _roleDTO;
    map["extra11"] = _extra11;
    map["meetingUrl"] = _meetingUrl;
    return map;
  }

}

class ResponseLoginDTO {
  String _userLoginHash;
  String _userType;
  String _lognStage;
  int _standardId;
  String _signupType;

  String get userLoginHash => _userLoginHash;
  String get userType => _userType;
  String get lognStage => _lognStage;
  int get standardId => _standardId;
  String get signupType => _signupType;

  ResponseLoginDTO({
      String userLoginHash, 
      String userType, 
      String lognStage, 
      int standardId, 
      String signupType}){
    _userLoginHash = userLoginHash;
    _userType = userType;
    _lognStage = lognStage;
    _standardId = standardId;
    _signupType = signupType;
}

  ResponseLoginDTO.fromJson(dynamic json) {
    _userLoginHash = json["userLoginHash"];
    _userType = json["userType"];
    _lognStage = json["lognStage"];
    _standardId = json["standardId"];
    _signupType = json["signupType"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userLoginHash"] = _userLoginHash;
    map["userType"] = _userType;
    map["lognStage"] = _lognStage;
    map["standardId"] = _standardId;
    map["signupType"] = _signupType;
    return map;
  }

}

class ResponseData {
  int _userId;
  String _userRole;
  int _studentId;
  dynamic _teacherId;
  dynamic _schoolId;
  dynamic _parentId;
  dynamic _subjectId;
  int _studentStandardId;
  int _courseProvicerId;
  CommonProfileDTO _commonProfileDTO;
  dynamic _signupStudentDTO;
  dynamic _signupParentDTO;
  dynamic _signupAddressDTO;
  dynamic _courseDetailsDTO;
  dynamic _courseDetailsResponseDTO;
  int _status;
  int _signupPage;
  dynamic _message;
  dynamic _addStudentListDTO;
  dynamic _studentBasicDetails;
  dynamic _feeBreakup;

  int get userId => _userId;
  String get userRole => _userRole;
  int get studentId => _studentId;
  dynamic get teacherId => _teacherId;
  dynamic get schoolId => _schoolId;
  dynamic get parentId => _parentId;
  dynamic get subjectId => _subjectId;
  int get studentStandardId => _studentStandardId;
  int get courseProvicerId => _courseProvicerId;
  CommonProfileDTO get commonProfileDTO => _commonProfileDTO;
  dynamic get signupStudentDTO => _signupStudentDTO;
  dynamic get signupParentDTO => _signupParentDTO;
  dynamic get signupAddressDTO => _signupAddressDTO;
  dynamic get courseDetailsDTO => _courseDetailsDTO;
  dynamic get courseDetailsResponseDTO => _courseDetailsResponseDTO;
  int get status => _status;
  int get signupPage => _signupPage;
  dynamic get message => _message;
  dynamic get addStudentListDTO => _addStudentListDTO;
  dynamic get studentBasicDetails => _studentBasicDetails;
  dynamic get feeBreakup => _feeBreakup;

  ResponseData({
      int userId, 
      String userRole, 
      int studentId, 
      dynamic teacherId, 
      dynamic schoolId, 
      dynamic parentId, 
      dynamic subjectId, 
      int studentStandardId, 
      int courseProvicerId, 
      CommonProfileDTO commonProfileDTO, 
      dynamic signupStudentDTO, 
      dynamic signupParentDTO, 
      dynamic signupAddressDTO, 
      dynamic courseDetailsDTO, 
      dynamic courseDetailsResponseDTO, 
      int status, 
      int signupPage, 
      dynamic message, 
      dynamic addStudentListDTO, 
      dynamic studentBasicDetails, 
      dynamic feeBreakup}){
    _userId = userId;
    _userRole = userRole;
    _studentId = studentId;
    _teacherId = teacherId;
    _schoolId = schoolId;
    _parentId = parentId;
    _subjectId = subjectId;
    _studentStandardId = studentStandardId;
    _courseProvicerId = courseProvicerId;
    _commonProfileDTO = commonProfileDTO;
    _signupStudentDTO = signupStudentDTO;
    _signupParentDTO = signupParentDTO;
    _signupAddressDTO = signupAddressDTO;
    _courseDetailsDTO = courseDetailsDTO;
    _courseDetailsResponseDTO = courseDetailsResponseDTO;
    _status = status;
    _signupPage = signupPage;
    _message = message;
    _addStudentListDTO = addStudentListDTO;
    _studentBasicDetails = studentBasicDetails;
    _feeBreakup = feeBreakup;
}

  ResponseData.fromJson(dynamic json) {
    _userId = json["userId"];
    _userRole = json["userRole"];
    _studentId = json["studentId"];
    _teacherId = json["teacherId"];
    _schoolId = json["schoolId"];
    _parentId = json["parentId"];
    _subjectId = json["subjectId"];
    _studentStandardId = json["studentStandardId"];
    _courseProvicerId = json["courseProvicerId"];
    _commonProfileDTO = json["commonProfileDTO"] != null ? CommonProfileDTO.fromJson(json["commonProfileDTO"]) : null;
    _signupStudentDTO = json["signupStudentDTO"];
    _signupParentDTO = json["signupParentDTO"];
    _signupAddressDTO = json["signupAddressDTO"];
    _courseDetailsDTO = json["courseDetailsDTO"];
    _courseDetailsResponseDTO = json["courseDetailsResponseDTO"];
    _status = json["status"];
    _signupPage = json["signupPage"];
    _message = json["message"];
    _addStudentListDTO = json["addStudentListDTO"];
    _studentBasicDetails = json["studentBasicDetails"];
    _feeBreakup = json["feeBreakup"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userId"] = _userId;
    map["userRole"] = _userRole;
    map["studentId"] = _studentId;
    map["teacherId"] = _teacherId;
    map["schoolId"] = _schoolId;
    map["parentId"] = _parentId;
    map["subjectId"] = _subjectId;
    map["studentStandardId"] = _studentStandardId;
    map["courseProvicerId"] = _courseProvicerId;
    if (_commonProfileDTO != null) {
      map["commonProfileDTO"] = _commonProfileDTO.toJson();
    }
    map["signupStudentDTO"] = _signupStudentDTO;
    map["signupParentDTO"] = _signupParentDTO;
    map["signupAddressDTO"] = _signupAddressDTO;
    map["courseDetailsDTO"] = _courseDetailsDTO;
    map["courseDetailsResponseDTO"] = _courseDetailsResponseDTO;
    map["status"] = _status;
    map["signupPage"] = _signupPage;
    map["message"] = _message;
    map["addStudentListDTO"] = _addStudentListDTO;
    map["studentBasicDetails"] = _studentBasicDetails;
    map["feeBreakup"] = _feeBreakup;
    return map;
  }

}

class CommonProfileDTO {
  String _profileMessage;
  String _profileName;
  String _profileRole;
  String _profileImagePath;
  String _profileFullName;
  String _appProfileFullName;
  String _emailId;
  bool _loginflag;

  String get profileMessage => _profileMessage;
  String get profileName => _profileName;
  String get profileRole => _profileRole;
  String get profileImagePath => _profileImagePath;
  String get profileFullName => _profileFullName;
  String get appProfileFullName => _appProfileFullName;
  String get emailId => _emailId;
  bool get loginflag => _loginflag;

  CommonProfileDTO({
      String profileMessage, 
      String profileName, 
      String profileRole, 
      String profileImagePath, 
      String profileFullName, 
      String appProfileFullName, 
      String emailId, 
      bool loginflag}){
    _profileMessage = profileMessage;
    _profileName = profileName;
    _profileRole = profileRole;
    _profileImagePath = profileImagePath;
    _profileFullName = profileFullName;
    _appProfileFullName = appProfileFullName;
    _emailId = emailId;
    _loginflag = loginflag;
}

  CommonProfileDTO.fromJson(dynamic json) {
    _profileMessage = json["profileMessage"];
    _profileName = json["profileName"];
    _profileRole = json["profileRole"];
    _profileImagePath = json["profileImagePath"];
    _profileFullName = json["profileFullName"];
    _appProfileFullName = json["appProfileFullName"];
    _emailId = json["emailId"];
    _loginflag = json["loginflag"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["profileMessage"] = _profileMessage;
    map["profileName"] = _profileName;
    map["profileRole"] = _profileRole;
    map["profileImagePath"] = _profileImagePath;
    map["profileFullName"] = _profileFullName;
    map["appProfileFullName"] = _appProfileFullName;
    map["emailId"] = _emailId;
    map["loginflag"] = _loginflag;
    return map;
  }

}