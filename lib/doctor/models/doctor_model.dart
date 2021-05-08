class DoctorModel {
  static var doctorAPI = "http://103.134.27.40/ProHealthAPI/api/Doctor/";
}

class Doctor {
  int doctorID;
  int memberID;
  int specialityID;
  String doctorName;
  String mobileNo;
  String dateOfBirth;
  String gender;
  String doctorDesc;
  int eduQualificationID;
  String experience;
  String workingPlace;
  int consultationFee;
  int followupFee;
  String availability;
  ConsultStartTime consultStartTime;
  ConsultStartTime consultEndTime;
  String appJoinDate;
  String bmdcNmuber;
  int consultDiscount;
  int followupDiscount;
  String discountStartDate;
  String discountEndDate;

  Doctor(
      {this.doctorID,
      this.memberID,
      this.specialityID,
      this.doctorName,
      this.mobileNo,
      this.dateOfBirth,
      this.gender,
      this.doctorDesc,
      this.eduQualificationID,
      this.experience,
      this.workingPlace,
      this.consultationFee,
      this.followupFee,
      this.availability,
      this.consultStartTime,
      this.consultEndTime,
      this.appJoinDate,
      this.bmdcNmuber,
      this.consultDiscount,
      this.followupDiscount,
      this.discountStartDate,
      this.discountEndDate});

  Doctor.fromJson(Map<String, dynamic> json) {
    doctorID = json['doctorID'];
    memberID = json['memberID'];
    specialityID = json['specialityID'];
    doctorName = json['doctorName'];
    mobileNo = json['mobileNo'];
    dateOfBirth = json['dateOfBirth'];
    gender = json['gender'];
    doctorDesc = json['doctorDesc'];
    eduQualificationID = json['eduQualificationID'];
    experience = json['experience'];
    workingPlace = json['workingPlace'];
    consultationFee = json['consultationFee'];
    followupFee = json['followupFee'];
    availability = json['availability'];
    consultStartTime = json['consultStartTime'] != null
        ? new ConsultStartTime.fromJson(json['consultStartTime'])
        : null;
    consultEndTime = json['consultEndTime'] != null
        ? new ConsultStartTime.fromJson(json['consultEndTime'])
        : null;
    appJoinDate = json['appJoinDate'];
    bmdcNmuber = json['bmdcNmuber'];
    consultDiscount = json['consultDiscount'];
    followupDiscount = json['followupDiscount'];
    discountStartDate = json['discountStartDate'];
    discountEndDate = json['discountEndDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['doctorID'] = this.doctorID;
    data['memberID'] = this.memberID;
    data['specialityID'] = this.specialityID;
    data['doctorName'] = this.doctorName;
    data['mobileNo'] = this.mobileNo;
    data['dateOfBirth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['doctorDesc'] = this.doctorDesc;
    data['eduQualificationID'] = this.eduQualificationID;
    data['experience'] = this.experience;
    data['workingPlace'] = this.workingPlace;
    data['consultationFee'] = this.consultationFee;
    data['followupFee'] = this.followupFee;
    data['availability'] = this.availability;
    if (this.consultStartTime != null) {
      data['consultStartTime'] = this.consultStartTime.toJson();
    }
    if (this.consultEndTime != null) {
      data['consultEndTime'] = this.consultEndTime.toJson();
    }
    data['appJoinDate'] = this.appJoinDate;
    data['bmdcNmuber'] = this.bmdcNmuber;
    data['consultDiscount'] = this.consultDiscount;
    data['followupDiscount'] = this.followupDiscount;
    data['discountStartDate'] = this.discountStartDate;
    data['discountEndDate'] = this.discountEndDate;
    return data;
  }
}

class ConsultStartTime {
  int ticks;
  int days;
  int hours;
  int milliseconds;
  int minutes;
  int seconds;
  double totalDays;
  double totalHours;
  int totalMilliseconds;
  int totalMinutes;
  int totalSeconds;

  ConsultStartTime(
      {this.ticks,
      this.days,
      this.hours,
      this.milliseconds,
      this.minutes,
      this.seconds,
      this.totalDays,
      this.totalHours,
      this.totalMilliseconds,
      this.totalMinutes,
      this.totalSeconds});

  ConsultStartTime.fromJson(Map<String, dynamic> json) {
    ticks = json['ticks'];
    days = json['days'];
    hours = json['hours'];
    milliseconds = json['milliseconds'];
    minutes = json['minutes'];
    seconds = json['seconds'];
    totalDays = json['totalDays'];
    totalHours = json['totalHours'];
    totalMilliseconds = json['totalMilliseconds'];
    totalMinutes = json['totalMinutes'];
    totalSeconds = json['totalSeconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ticks'] = this.ticks;
    data['days'] = this.days;
    data['hours'] = this.hours;
    data['milliseconds'] = this.milliseconds;
    data['minutes'] = this.minutes;
    data['seconds'] = this.seconds;
    data['totalDays'] = this.totalDays;
    data['totalHours'] = this.totalHours;
    data['totalMilliseconds'] = this.totalMilliseconds;
    data['totalMinutes'] = this.totalMinutes;
    data['totalSeconds'] = this.totalSeconds;
    return data;
  }
}
