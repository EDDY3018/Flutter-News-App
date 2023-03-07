final List<String> gradeList = [
  "CREC01",
  "PRI01",
  "PRI02",
  "PRI03",
  "PRI04",
  "PRI05",
  "PRI06",
  "JHS101",
  "JHS201",
  "JHS301",
];

final List<String> paymentTypeList = [
  "Cash",
  "Cheque",
  "Mobile Money",
];
final List<String> classList = [
  "CRECH",
  "BASIC1",
  "BASIC2",
  "BASIC3",
  "BASIC4",
  "BASIC5",
  "BASIC6",
  "JHS101",
  "JHS201",
  "JHS301",
];

final List<String> maritalStatusList = [
  "Marriage",
  "Single",
  "Divorce",
  "Not specified",
];

final List<String> departmentList = [
  "Academic",
  "Non-Academic",
];

final List<String> subjectDepartmentList = [
  "ENAGLISH",
  "MATHEMATICS",
  "COMPUTING",
  "PHYSICAL EDUCATION",
  "SCIENCE",
];

enum SMSTypeList {
  bulksms,
  pushNotification,
}

enum EmailTypeList {
  bulkEmail,
}

final List<String> curriculumnList = [
  "GES CURRICULUMN",
  "AMERICAN CURRICULUMN",
  "EUROPEAN CURRICULUMN",
  "BRITISH CURRICULUMN",
];

final List<String> genderList = [
  "Male",
  "Female",
];

final List<String> sectionList = [
  "PRE-SCHOOL",
  "PRIMARY",
  "JHS",
];

final List<String> subClassList = [
  "A",
  "B",
  "C",
  "E",
  "F",
  "G",
];

List<Map<String, dynamic>> allGradesList = [
  {"id": "CREC01", "text": "CREC"},
  {"id": "PRI01", "text": "PRI1"},
  {"id": "PRI02", "text": "PRI2"},
  {"id": "PRI03", "text": "PRI3"},
  {"id": "PRI04", "text": "PRI4"},
  {"id": "PRI05", "text": "PRI5"},
  {"id": "PRI06", "text": "PRI6"},
  {"id": "JHS101", "text": "JHS1"},
  {"id": "JHS201", "text": "JHS2"},
  {"id": "JHS301", "text": "JHS3"},
];

Map<String, dynamic> attendanceMap = {
  "data": [
    {
      "id": "GIT001S",
      "attendance": [
        {
          "clockIn": [
            {"date": "12/01/2022", "time": "7:30"},
            {"date": "12/12/2022", "time": "9:39"},
            {"date": "12/05/2022", "time": "6:36"},
            {"date": "12/03/2022", "time": "7:37"},
            {"date": "12/02/2022", "time": "8:49"},
          ],
          "clockOut": [
            {"date": "12/04/2022", "time": "15:11"},
            {"date": "12/12/2022", "time": "13:11"},
            {"date": "12/05/2022", "time": "12:11"},
            {"date": "12/03/2022", "time": "14:11"},
            {"date": "12/02/2022", "time": "16:11"}
          ],
        }
      ]
    },
    {
      "id": "GIT002S",
      "attendance": [
        {
          "clockIn": [
            {"date": "31/02/2022", "time": "7:30"},
            {"date": "12/12/2022", "time": "9:11"},
            {"date": "12/05/2022", "time": "6:11"},
            {"date": "12/03/2022", "time": "7:11"},
            {"date": "12/02/2022", "time": "8:11"}
          ],
          "clockOut": [
            {"date": "24/04/2022", "time": "15:11"},
            {"date": "12/12/2022", "time": "13:11"},
            {"date": "12/05/2022", "time": "12:11"},
            {"date": "12/03/2022", "time": "14:11"},
            {"date": "12/02/2022", "time": "16:11"}
          ]
        }
      ]
    },
    {
      "id": "GIT004S",
      "attendance": [
        {
          "clockIn": [
            {"date": "30/07/2022", "time": "7:11"},
            {"date": "12/12/2022", "time": "9:11"},
            {"date": "12/05/2022", "time": "6:11"},
            {"date": "12/03/2022", "time": "7:11"},
            {"date": "12/02/2022", "time": "8:11"}
          ],
          "clockOut": [
            {"date": "3/04/2022", "time": "15:11"},
            {"date": "12/12/2022", "time": "13:11"},
            {"date": "12/05/2022", "time": "12:11"},
            {"date": "12/03/2022", "time": "14:11"},
            {"date": "12/02/2022", "time": "16:11"}
          ]
        }
      ]
    },
    {
      "id": "GIT005S",
      "attendance": [
        {
          "clockIn": [
            {"date": "4/03/2022", "time": "7:43"},
            {"date": "12/12/2022", "time": "9:45"},
            {"date": "12/05/2022", "time": "6:42"},
            {"date": "12/03/2022", "time": "7:41"},
            {"date": "12/02/2022", "time": "8:14"}
          ],
          "clockOut": [
            {"date": "12/04/2022", "time": "15:11"},
            {"date": "12/12/2022", "time": "13:11"},
            {"date": "12/05/2022", "time": "12:11"},
            {"date": "12/03/2022", "time": "14:11"},
            {"date": "12/02/2022", "time": "16:11"}
          ]
        }
      ]
    },
    {
      "id": "GIT006S",
      "attendance": [
        {
          "clockIn": [
            {"date": "12/07/2022", "time": "7:44"},
            {"date": "12/12/2022", "time": "9:11"},
            {"date": "12/05/2022", "time": "6:11"},
            {"date": "12/03/2022", "time": "7:45"},
            {"date": "12/02/2022", "time": "8:54"},
          ],
          "clockOut": [
            {"date": "12/04/2022", "time": "15:34"},
            {"date": "12/12/2022", "time": "13:43"},
            {"date": "12/05/2022", "time": "12:53"},
            {"date": "12/03/2022", "time": "14:35"},
            {
              "date": "12/02/2022",
              "time": "16:11",
            },
          ],
        }
      ]
    },
    {
      "id": "GIT007S",
      "attendance": [
        {
          "clockIn": [
            {"date": "12/07/2022", "time": "7:25"},
            {"date": "12/12/2022", "time": "9:52"},
            {"date": "12/05/2022", "time": "6:15"},
            {"date": "12/03/2022", "time": "7:51"},
            {"date": "12/02/2022", "time": "8:14"},
          ],
          "clockOut": [
            {"date": "12/04/2022", "time": "15:41"},
            {"date": "12/12/2022", "time": "13:13"},
            {"date": "12/05/2022", "time": "12:12"},
            {"date": "12/03/2022", "time": "14:31"},
            {"date": "12/02/2022", "time": "16:21"},
          ],
        }
      ]
    },
    {
      "id": "GIT008S",
      "attendance": [
        {
          "clockIn": [
            {"date": "12/07/2022", "time": "7:55"},
            {"date": "12/12/2022", "time": "9:11"},
            {"date": "12/05/2022", "time": "6:11"},
            {"date": "12/03/2022", "time": "7:56"},
            {"date": "12/02/2022", "time": "8:11"},
          ],
          "clockOut": [
            {"date": "12/04/2022", "time": "15:32"},
            {"date": "12/12/2022", "time": "13:12"},
            {"date": "12/05/2022", "time": "12:21"},
            {"date": "12/03/2022", "time": "14:23"},
            {"date": "12/02/2022", "time": "16:45"},
          ],
        }
      ]
    },
    {
      "id": "GIT009S",
      "attendance": [
        {
          "clockIn": [
            {"date": "12/07/2022", "time": "7:23"},
            {"date": "12/12/2022", "time": "9:11"},
            {"date": "12/05/2022", "time": "6:43"},
            {"date": "12/03/2022", "time": "7:54"},
            {"date": "12/02/2022", "time": "8:23"},
          ],
          "clockOut": [
            {"date": "12/04/2022", "time": "15:34"},
            {"date": "12/12/2022", "time": "13:23"},
            {"date": "12/05/2022", "time": "12:56"},
            {"date": "12/03/2022", "time": "14:11"},
            {"date": "12/02/2022", "time": "16:43"},
          ],
        }
      ]
    },
    {
      "id": "GIT0010S",
      "attendance": [
        {
          "clockIn": [
            {"date": "12/07/2022", "time": "7:56"},
            {"date": "12/12/2022", "time": "9:11"},
            {"date": "12/05/2022", "time": "6:56"},
            {"date": "12/03/2022", "time": "7:78"},
            {"date": "12/02/2022", "time": "8:43"},
          ],
          "clockOut": [
            {"date": "12/04/2022", "time": "15:43"},
            {"date": "12/12/2022", "time": "13:11"},
            {"date": "12/05/2022", "time": "12:11"},
            {"date": "12/03/2022", "time": "14:11"},
            {"date": "12/02/2022", "time": "16:11"},
          ],
        },
      ],
    },
  ]
};
Map<String, dynamic> staffMap = {
  "data": [
    {
      "id": "GIT001S",
      "name": "Maxwell Agra",
      "email": "maxwell@gitplu.app",
    },
    {
      "id": "GIT002S",
      "name": "Michael Tameklo",
      "email": "michael@gitplu.app",
    },
    {
      "id": "GIT003S",
      "name": "Wishwell Oklu",
      "email": "wishwell@gitplu.app",
    },
    {
      "id": "GIT004S",
      "name": "Osei Nana Koakye",
      "email": "kwakye@gitplu.app",
    },
    {
      "id": "GIT005S",
      "name": "Yeboah Nana Osei",
      "email": "yeboah@gitplu.app",
    },
    {
      "id": "GIT006S",
      "name": "Emmanuel Gadadu",
      "email": "emmanuel@gitplu.app",
    },
    {
      "id": "GIT0014S",
      "name": "Avadzi Gadadu",
      "email": "emmanuel@gitplu.app",
    },
    {
      "id": "GIT007S",
      "name": "Emmanuel Suka",
      "email": "suka@gitplu.app",
    },
    {
      "id": "GIT008S",
      "name": "Albert Suka",
      "email": "albert@gitplu.app",
    },
    {
      "id": "GIT009S",
      "name": "Elikem Kobby",
      "email": "elikem@gitplu.app",
    },
    {
      "id": "GIT0010S",
      "name": "Armstrong",
      "email": "armstrong@gitplu.app",
    },
  ]
};

Map<String, dynamic> subjectsMap = {
  "data": [
    {
      "id": "MAT001",
      "subject": "Mathematics",
    },
    {"id": "ENG001", "subject": "English Language"},
    {"id": "CRT001", "subject": "Creative Arts"},
    {"id": "INTSC001", "subject": "Integrated Science"},
    {"id": "SOC001", "subject": "Social Studies"},
    {"id": "BDT001", "subject": "Basic Design Education"}
  ]
};

Map<String, dynamic> studentsMap = {
  "data": [
    {"id": "GIT0001", "name": "Wishwell Oklu"},
    {"id": "GIT0002", "name": "Michael Abavana"},
    {"id": "GIT0003", "name": "Samuel Akoto"},
    {"id": "GIT0004", "name": "Bismark Akorli"},
    {"id": "GIT0005", "name": "Christian Gomashie"},
    {"id": "GIT0006", "name": "Mattew Ashimolo"},
    {"id": "GIT0007", "name": "Comfort Boamah"},
    {"id": "GIT0008", "name": "Princess Ayetey"},
    {"id": "GIT0009", "name": "Emmanuel Fiaxor"},
    {"id": "GIT00010", "name": "Millicent Agyeman"},
    {"id": "GIT00011", "name": "Atampuri Bill"},
    {"id": "GIT00012", "name": "Asamoah Joe"},
    {"id": "GIT00013", "name": "Mavis Annor"},
    {"id": "GIT00014", "name": "Bawah Brand"},
    {"id": "GIT00015", "name": "Christian Tawiah"},
    {"id": "GIT00016", "name": "May Basah"},
    {"id": "GIT00017", "name": "Christiana Opuni"},
    {"id": "GIT00018", "name": "Maron Kle"},
    {"id": "GIT00019", "name": "Bobbey Baba"}
  ]
};

final List<String> newsTypeList = [
  "Announcement",
  "News Update",
  "Emergency",
  "Others",
];

final List<String> recipientsList = [
  "STAFF",
  "STUDENTS",
  "PARENTS",
];

final List<Map<String, dynamic>> recipientsMap = [
  {"recipient": "STAFF", "selected": true},
  {"recipient": "STUDENTS", "selected": false},
  {"recipient": "PARENTS", "selected": false},
];
Map<String, dynamic> chartMap = {
  "data": [
    {"grade": "Grade 1", "value": 20},
    {"grade": "Grade 2", "value": 34},
    {"grade": "Grade 3", "value": 45},
    {"grade": "Grade 4", "value": 23},
    {"grade": "Grade 5", "value": 56},
    {"grade": "Grade 6", "value": 123},
    {"grade": "Grade 7", "value": 78},
    {"grade": "Grade 8", "value": 44},
  ]
};

final List<String> categoryList = [
  "SCIENCE",
  "MATHEMATICS",
  "ENGLISH",
];

final List<String> bookList = [
  "Aki-Ola English",
  "Aki-Ola Integrated Science",
  "Aki-Ola Social Studies",
  "Aki-Ola English",
  "Aki-Ola Integrated Science",
  "Aki-Ola Social Studies",
];

final List<String> yearList = [
  "2022",
  "2023",
  "2024",
];

final List<String> termList = [
  "1",
  "2",
  "3",
];

final List<String> billItemList = [
  "ARREARS",
  "TUITION FEE",
  "SCHOOL FEE",
  "PTA FEE",
  "EXAMINATION FEE",
  "SOUVENIR",
  "UTILITIES",
];

enum Menu { edit, delete, print,  assignParent, assignWard}
