class SyllabushList {
  StatusResponse _statusResponse;
  DashboardStudentDTO _dashboardStudentDTO;
  dynamic _subjectList;

  StatusResponse get statusResponse => _statusResponse;
  DashboardStudentDTO get dashboardStudentDTO => _dashboardStudentDTO;
  dynamic get subjectList => _subjectList;

  SyllabushList({
      StatusResponse statusResponse, 
      DashboardStudentDTO dashboardStudentDTO, 
      dynamic subjectList}){
    _statusResponse = statusResponse;
    _dashboardStudentDTO = dashboardStudentDTO;
    _subjectList = subjectList;
}

  SyllabushList.fromJson(dynamic json) {
    _statusResponse = json["statusResponse"] != null ? StatusResponse.fromJson(json["statusResponse"]) : null;
    _dashboardStudentDTO = json["dashboardStudentDTO"] != null ? DashboardStudentDTO.fromJson(json["dashboardStudentDTO"]) : null;
    _subjectList = json["subjectList"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_statusResponse != null) {
      map["statusResponse"] = _statusResponse.toJson();
    }
    if (_dashboardStudentDTO != null) {
      map["dashboardStudentDTO"] = _dashboardStudentDTO.toJson();
    }
    map["subjectList"] = _subjectList;
    return map;
  }

}

class DashboardStudentDTO {
  dynamic _commonProfileDTO;
  dynamic _headingName;
  StudentTaskDTO _studentTaskDTO;
  dynamic _studentDueFeesDTO;
  dynamic _studentPTMReportDTO;
  dynamic _studentPerformanceDTO;
  dynamic _updateProfileStudentDTO;
  dynamic _studentViewReceiptDTO;
  dynamic _studentTranscriptReportDTO;
  dynamic _studentSubjectDTO;
  dynamic _studentPlacementSubjectDTO;
  bool _rightToEdit;
  dynamic _studentTeacherRequestDTO;

  dynamic get commonProfileDTO => _commonProfileDTO;
  dynamic get headingName => _headingName;
  StudentTaskDTO get studentTaskDTO => _studentTaskDTO;
  dynamic get studentDueFeesDTO => _studentDueFeesDTO;
  dynamic get studentPTMReportDTO => _studentPTMReportDTO;
  dynamic get studentPerformanceDTO => _studentPerformanceDTO;
  dynamic get updateProfileStudentDTO => _updateProfileStudentDTO;
  dynamic get studentViewReceiptDTO => _studentViewReceiptDTO;
  dynamic get studentTranscriptReportDTO => _studentTranscriptReportDTO;
  dynamic get studentSubjectDTO => _studentSubjectDTO;
  dynamic get studentPlacementSubjectDTO => _studentPlacementSubjectDTO;
  bool get rightToEdit => _rightToEdit;
  dynamic get studentTeacherRequestDTO => _studentTeacherRequestDTO;

  DashboardStudentDTO({
      dynamic commonProfileDTO, 
      dynamic headingName, 
      StudentTaskDTO studentTaskDTO, 
      dynamic studentDueFeesDTO, 
      dynamic studentPTMReportDTO, 
      dynamic studentPerformanceDTO, 
      dynamic updateProfileStudentDTO, 
      dynamic studentViewReceiptDTO, 
      dynamic studentTranscriptReportDTO, 
      dynamic studentSubjectDTO, 
      dynamic studentPlacementSubjectDTO, 
      bool rightToEdit, 
      dynamic studentTeacherRequestDTO}){
    _commonProfileDTO = commonProfileDTO;
    _headingName = headingName;
    _studentTaskDTO = studentTaskDTO;
    _studentDueFeesDTO = studentDueFeesDTO;
    _studentPTMReportDTO = studentPTMReportDTO;
    _studentPerformanceDTO = studentPerformanceDTO;
    _updateProfileStudentDTO = updateProfileStudentDTO;
    _studentViewReceiptDTO = studentViewReceiptDTO;
    _studentTranscriptReportDTO = studentTranscriptReportDTO;
    _studentSubjectDTO = studentSubjectDTO;
    _studentPlacementSubjectDTO = studentPlacementSubjectDTO;
    _rightToEdit = rightToEdit;
    _studentTeacherRequestDTO = studentTeacherRequestDTO;
}

  DashboardStudentDTO.fromJson(dynamic json) {
    _commonProfileDTO = json["commonProfileDTO"];
    _headingName = json["headingName"];
    _studentTaskDTO = json["studentTaskDTO"] != null ? StudentTaskDTO.fromJson(json["studentTaskDTO"]) : null;
    _studentDueFeesDTO = json["studentDueFeesDTO"];
    _studentPTMReportDTO = json["studentPTMReportDTO"];
    _studentPerformanceDTO = json["studentPerformanceDTO"];
    _updateProfileStudentDTO = json["updateProfileStudentDTO"];
    _studentViewReceiptDTO = json["studentViewReceiptDTO"];
    _studentTranscriptReportDTO = json["studentTranscriptReportDTO"];
    _studentSubjectDTO = json["studentSubjectDTO"];
    _studentPlacementSubjectDTO = json["studentPlacementSubjectDTO"];
    _rightToEdit = json["rightToEdit"];
    _studentTeacherRequestDTO = json["studentTeacherRequestDTO"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["commonProfileDTO"] = _commonProfileDTO;
    map["headingName"] = _headingName;
    if (_studentTaskDTO != null) {
      map["studentTaskDTO"] = _studentTaskDTO.toJson();
    }
    map["studentDueFeesDTO"] = _studentDueFeesDTO;
    map["studentPTMReportDTO"] = _studentPTMReportDTO;
    map["studentPerformanceDTO"] = _studentPerformanceDTO;
    map["updateProfileStudentDTO"] = _updateProfileStudentDTO;
    map["studentViewReceiptDTO"] = _studentViewReceiptDTO;
    map["studentTranscriptReportDTO"] = _studentTranscriptReportDTO;
    map["studentSubjectDTO"] = _studentSubjectDTO;
    map["studentPlacementSubjectDTO"] = _studentPlacementSubjectDTO;
    map["rightToEdit"] = _rightToEdit;
    map["studentTeacherRequestDTO"] = _studentTeacherRequestDTO;
    return map;
  }

}

class StudentTaskDTO {
  List<SubjectList> _subjectList;
  List<dynamic> _studentTeacherMappingList;
  dynamic _teacherList;
  List<dynamic> _studentAssignedTeacherDTOList;

  List<SubjectList> get subjectList => _subjectList;
  List<dynamic> get studentTeacherMappingList => _studentTeacherMappingList;
  dynamic get teacherList => _teacherList;
  List<dynamic> get studentAssignedTeacherDTOList => _studentAssignedTeacherDTOList;

  StudentTaskDTO({
      List<SubjectList> subjectList, 
      List<dynamic> studentTeacherMappingList, 
      dynamic teacherList, 
      List<dynamic> studentAssignedTeacherDTOList}){
    _subjectList = subjectList;
    _studentTeacherMappingList = studentTeacherMappingList;
    _teacherList = teacherList;
    _studentAssignedTeacherDTOList = studentAssignedTeacherDTOList;
}

  StudentTaskDTO.fromJson(dynamic json) {
    if (json["subjectList"] != null) {
      _subjectList = [];
      json["subjectList"].forEach((v) {
        _subjectList.add(SubjectList.fromJson(v));
      });
    }

    _teacherList = json["teacherList"];

  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_subjectList != null) {
      map["subjectList"] = _subjectList.map((v) => v.toJson()).toList();
    }
    if (_studentTeacherMappingList != null) {
      map["studentTeacherMappingList"] = _studentTeacherMappingList.map((v) => v.toJson()).toList();
    }
    map["teacherList"] = _teacherList;
    if (_studentAssignedTeacherDTOList != null) {
      map["studentAssignedTeacherDTOList"] = _studentAssignedTeacherDTOList.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class SubjectList {
  int _subjectId;
  int _courseProviderId;
  String _courseType;
  int _courseId;
  int _standardId;
  dynamic _fullTimeCourseId;
  dynamic _creditRecoverCourseId;
  dynamic _advancePlacementCourseId;
  int _parentId;
  dynamic _selfPid;
  String _entityName;
  String _subjectName;
  int _isCompulsary;
  int _seq;
  int _costAnnual;
  int _costNineMonth;
  int _costSixMonth;
  int _costThreeMonth;
  int _status;
  int _createdBy;
  String _createdDate;
  int _lastUpdatedBy;
  String _lastUpdatedDate;
  String _subjectCode;
  int _duration;
  int _subjectHint;
  String _subjectIcon;
  String _active;
  String _deleted;
  dynamic _requirement;
  dynamic _optional;
  dynamic _additional;
  dynamic _materialRequired;
  String _forGrade;
  bool _courseFilled;

  int get subjectId => _subjectId;
  int get courseProviderId => _courseProviderId;
  String get courseType => _courseType;
  int get courseId => _courseId;
  int get standardId => _standardId;
  dynamic get fullTimeCourseId => _fullTimeCourseId;
  dynamic get creditRecoverCourseId => _creditRecoverCourseId;
  dynamic get advancePlacementCourseId => _advancePlacementCourseId;
  int get parentId => _parentId;
  dynamic get selfPid => _selfPid;
  String get entityName => _entityName;
  String get subjectName => _subjectName;
  int get isCompulsary => _isCompulsary;
  int get seq => _seq;
  int get costAnnual => _costAnnual;
  int get costNineMonth => _costNineMonth;
  int get costSixMonth => _costSixMonth;
  int get costThreeMonth => _costThreeMonth;
  int get status => _status;
  int get createdBy => _createdBy;
  String get createdDate => _createdDate;
  int get lastUpdatedBy => _lastUpdatedBy;
  String get lastUpdatedDate => _lastUpdatedDate;
  String get subjectCode => _subjectCode;
  int get duration => _duration;
  int get subjectHint => _subjectHint;
  String get subjectIcon => _subjectIcon;
  String get active => _active;
  String get deleted => _deleted;
  dynamic get requirement => _requirement;
  dynamic get optional => _optional;
  dynamic get additional => _additional;
  dynamic get materialRequired => _materialRequired;
  String get forGrade => _forGrade;
  bool get courseFilled => _courseFilled;

  SubjectList({
      int subjectId, 
      int courseProviderId, 
      String courseType, 
      int courseId, 
      int standardId, 
      dynamic fullTimeCourseId, 
      dynamic creditRecoverCourseId, 
      dynamic advancePlacementCourseId, 
      int parentId, 
      dynamic selfPid, 
      String entityName, 
      String subjectName, 
      int isCompulsary, 
      int seq, 
      int costAnnual, 
      int costNineMonth, 
      int costSixMonth, 
      int costThreeMonth, 
      int status, 
      int createdBy, 
      String createdDate, 
      int lastUpdatedBy, 
      String lastUpdatedDate, 
      String subjectCode, 
      int duration, 
      int subjectHint, 
      String subjectIcon, 
      String active, 
      String deleted, 
      dynamic requirement, 
      dynamic optional, 
      dynamic additional, 
      dynamic materialRequired, 
      String forGrade, 
      bool courseFilled}){
    _subjectId = subjectId;
    _courseProviderId = courseProviderId;
    _courseType = courseType;
    _courseId = courseId;
    _standardId = standardId;
    _fullTimeCourseId = fullTimeCourseId;
    _creditRecoverCourseId = creditRecoverCourseId;
    _advancePlacementCourseId = advancePlacementCourseId;
    _parentId = parentId;
    _selfPid = selfPid;
    _entityName = entityName;
    _subjectName = subjectName;
    _isCompulsary = isCompulsary;
    _seq = seq;
    _costAnnual = costAnnual;
    _costNineMonth = costNineMonth;
    _costSixMonth = costSixMonth;
    _costThreeMonth = costThreeMonth;
    _status = status;
    _createdBy = createdBy;
    _createdDate = createdDate;
    _lastUpdatedBy = lastUpdatedBy;
    _lastUpdatedDate = lastUpdatedDate;
    _subjectCode = subjectCode;
    _duration = duration;
    _subjectHint = subjectHint;
    _subjectIcon = subjectIcon;
    _active = active;
    _deleted = deleted;
    _requirement = requirement;
    _optional = optional;
    _additional = additional;
    _materialRequired = materialRequired;
    _forGrade = forGrade;
    _courseFilled = courseFilled;
}

  SubjectList.fromJson(dynamic json) {
    _subjectId = json["subjectId"];
    _courseProviderId = json["courseProviderId"];
    _courseType = json["courseType"];
    _courseId = json["courseId"];
    _standardId = json["standardId"];
    _fullTimeCourseId = json["fullTimeCourseId"];
    _creditRecoverCourseId = json["creditRecoverCourseId"];
    _advancePlacementCourseId = json["advancePlacementCourseId"];
    _parentId = json["parentId"];
    _selfPid = json["selfPid"];
    _entityName = json["entityName"];
    _subjectName = json["subjectName"];
    _isCompulsary = json["isCompulsary"];
    _seq = json["seq"];
    _costAnnual = json["costAnnual"];
    _costNineMonth = json["costNineMonth"];
    _costSixMonth = json["costSixMonth"];
    _costThreeMonth = json["costThreeMonth"];
    _status = json["status"];
    _createdBy = json["createdBy"];
    _createdDate = json["createdDate"];
    _lastUpdatedBy = json["lastUpdatedBy"];
    _lastUpdatedDate = json["lastUpdatedDate"];
    _subjectCode = json["subjectCode"];
    _duration = json["duration"];
    _subjectHint = json["subjectHint"];
    _subjectIcon = json["subjectIcon"];
    _active = json["active"];
    _deleted = json["deleted"];
    _requirement = json["requirement"];
    _optional = json["optional"];
    _additional = json["additional"];
    _materialRequired = json["materialRequired"];
    _forGrade = json["forGrade"];
    _courseFilled = json["courseFilled"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["subjectId"] = _subjectId;
    map["courseProviderId"] = _courseProviderId;
    map["courseType"] = _courseType;
    map["courseId"] = _courseId;
    map["standardId"] = _standardId;
    map["fullTimeCourseId"] = _fullTimeCourseId;
    map["creditRecoverCourseId"] = _creditRecoverCourseId;
    map["advancePlacementCourseId"] = _advancePlacementCourseId;
    map["parentId"] = _parentId;
    map["selfPid"] = _selfPid;
    map["entityName"] = _entityName;
    map["subjectName"] = _subjectName;
    map["isCompulsary"] = _isCompulsary;
    map["seq"] = _seq;
    map["costAnnual"] = _costAnnual;
    map["costNineMonth"] = _costNineMonth;
    map["costSixMonth"] = _costSixMonth;
    map["costThreeMonth"] = _costThreeMonth;
    map["status"] = _status;
    map["createdBy"] = _createdBy;
    map["createdDate"] = _createdDate;
    map["lastUpdatedBy"] = _lastUpdatedBy;
    map["lastUpdatedDate"] = _lastUpdatedDate;
    map["subjectCode"] = _subjectCode;
    map["duration"] = _duration;
    map["subjectHint"] = _subjectHint;
    map["subjectIcon"] = _subjectIcon;
    map["active"] = _active;
    map["deleted"] = _deleted;
    map["requirement"] = _requirement;
    map["optional"] = _optional;
    map["additional"] = _additional;
    map["materialRequired"] = _materialRequired;
    map["forGrade"] = _forGrade;
    map["courseFilled"] = _courseFilled;
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