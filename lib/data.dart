String jsonData = '''
    {
      "companies": [
        {
  "companyName": "Example Company",
  "companyLink": "https://www.example.com",
  "jobListings": [
    {
      "jobTitle": "Flutter Developer",
      "jobDescription":
          "We are looking for a skilled Flutter developer to join our team...",
      "experienceRequired": "3-5 years of experience with Flutter and Dart",
      "perksAndBenefits": [
        "Competitive salary",
        "Flexible working hours",
        "Health insurance",
        "Paid time off",
        "401(k) matching"
      ],
      "location": {"city": "San Francisco", "state": "CA", "country": "USA"},
      "fields": ["Mobile Development", "UI/UX Design", "Software Engineering"],
      "salaryRange": "INR 9,000,000 - INR 13,500,000"
    }
  ]
},
{
  "companyName": "ABC Inc.",
  "companyLink": "https://www.abcinc.com",
  "jobListings": [
    {
      "jobTitle": "Web Designer",
      "jobDescription":
          "We are seeking a talented Web Designer to join our team...",
      "experienceRequired": "2-4 years of experience with web design",
      "perksAndBenefits": [
        "Flexible schedule",
        "Health and dental insurance",
        "401(k) matching",
        "Paid vacation time"
      ],
      "location": {"city": "New York", "state": "NY", "country": "USA"},
      "fields": ["Graphic Design", "Web Development", "User Experience"],
      "salaryRange": "USD 75,000 - USD 100,000"
    }
  ]
},
{
  "companyName": "XYZ Solutions",
  "companyLink": "https://www.xyzsolutions.com",
  "jobListings": [
    {
      "jobTitle": "Product Manager",
      "jobDescription":
          "We are seeking a skilled Product Manager to join our team...",
      "experienceRequired": "5-7 years of experience in product management",
      "perksAndBenefits": [
        "Competitive salary",
        "Flexible working hours",
        "Health insurance",
        "401(k) matching",
        "Paid time off"
      ],
      "location": {"city": "Seattle", "state": "WA", "country": "USA"},
      "fields": ["Product Management", "Marketing", "Data Analysis"],
      "salaryRange": "USD 120,000 - USD 150,000"
    }
  ]
},
{
  "companyName": "PQR Industries",
  "companyLink": "https://www.pqrindustries.com",
  "jobListings": [
    {
      "jobTitle": "Software Engineer",
      "jobDescription":
          "We are seeking an experienced Software Engineer to join our team...",
      "experienceRequired": "3-5 years of experience in software development",
      "perksAndBenefits": [
        "Flexible working hours",
        "Health and dental insurance",
        "401(k) matching",
        "Paid vacation time"
      ],
      "location": {"city": "Chicago", "state": "IL", "country": "USA"},
      "fields": ["Web Development", "Mobile Development", "Backend Development"],
      "salaryRange": "USD 90,000 - USD 120,000"
    }
  ]
},
{
  "companyName": "LMN Corporation",
  "companyLink": "https://www.lmncorporation.com",
  "jobListings": [
    {
      "jobTitle": "Data Analyst",
      "jobDescription":
          "We are seeking a talented Data Analyst to join our team...",
      "experienceRequired": "2-4 years of experience in data analysis",
      "perksAndBenefits": [
        "Flexible schedule",
        "Health and dental insurance",
        "401(k) matching",
        "Paid vacation time"
      ],
      "location": {"city": "Los Angeles", "state": "CA", "country": "USA"},
      "fields": ["Data Analysis", "Business Intelligence", "Statistics"],
      "salaryRange": "USD 70,000 - USD 90,000"
    }
  ]
},
{
  "companyName": "GHI Technologies",
  "companyLink": "https://www.ghitechnologies.com",
  "jobListings": [
    {
      "jobTitle": "iOS Developer",
      "jobDescription":
          "We are seeking a skilled iOS Developer to join our team...",
      "experienceRequired": "3-5 years of experience with iOS development",
      "perksAndBenefits": [
        "Competitive salary",
        "Flexible working hours",
        "Health insurance",
        "401(k) matching",
        "Paid time off"
      ],
      "location": {"city": "Boston", "state": "MA", "country": "USA"},
      "fields": ["Mobile Development", "UI/UX Design", "Software Engineering"],
      "salaryRange": "USD 100,000 - USD 130,000"
    }
  ]
},
{
  "companyName": "DEF Innovations",
  "companyLink": "https://www.definnovations.com",
  "jobListings": [
    {
      "jobTitle": "Front-End Developer",
      "jobDescription":
          "We are seeking a talented Front-End Developer to join our team...",
      "experienceRequired": "2-4 years of experience with front-end development",
      "perksAndBenefits": [
        "Flexible schedule",
        "Health and dental insurance",
        "401(k) matching",
        "Paid vacation time"
      ],
      "location": {"city": "San Diego", "state": "CA", "country": "USA"},
      "fields": ["Web Development", "User Experience", "Graphic Design"],
      "salaryRange": "USD 80,000 - USD 100,000"
    }
  ]
},
{
  "companyName": "JKL Enterprises",
  "companyLink": "https://www.jklenterprises.com",
  "jobListings": [
    {
      "jobTitle": "Full-Stack Developer",
      "jobDescription":
          "We are seeking a skilled Full-Stack Developer to join our team...",
      "experienceRequired":
          "3-5 years of experience with full-stack development",
      "perksAndBenefits": [
        "Competitive salary",
        "Flexible working hours",
        "Health insurance",
        "401(k) matching",
        "Paid time off"
      ],
      "location": {"city": "Austin", "state": "TX", "country": "USA"},
      "fields": ["Web Development", "Backend Development", "Database Management"],
      "salaryRange": "USD 110,000 - USD 140,000"
    }
  ]
},
{
  "companyName": "MNO Systems",
  "companyLink": "https://www.mnosystems.com",
  "jobListings": [
    {
      "jobTitle": "Security Engineer",
      "jobDescription":
          "We are seeking an experienced Security Engineer to join our team...",
      "experienceRequired":
          "5-7 years of experience in security engineering and architecture",
      "perksAndBenefits": [
        "Flexible working hours",
        "Health and dental insurance",
        "401(k) matching",
        "Paid vacation time"
      ],
      "location": {"city": "Washington D.C.", "state": "DC", "country": "USA"},
      "fields": ["Security Engineering", "Information Technology", "Risk Management"],
      "salaryRange": "USD 130,000 - USD 160,000"
    }
  ]
},
{
  "companyName": "QRS Technologies",
  "companyLink": "https://www.qrstechnologies.com",
  "jobListings": [
    {
      "jobTitle": "DevOps Engineer",
      "jobDescription":
          "We are seeking a skilled DevOps Engineer to join our team...",
      "experienceRequired":
          "3-5 years of experience in software development and deployment",
      "perksAndBenefits": [
        "Competitive salary",
        "Flexible working hours",
        "Health insurance",
        "401(k) matching",
        "Paid time off"
      ],
      "location": {"city": "Denver", "state": "CO", "country": "USA"},
      "fields": ["DevOps", "Software Development", "Cloud Computing"],
      "salaryRange": "USD 100,000 - USD 130,000"
    }
  ]
}]}
''';

String InternjsonData = '''
{
  "companies": [
    {
      "companyName": "Example Internship Company",
      "companyLink": "https://www.exampleinternshipcompany.com",
      "internshipListings": [
        {
          "internshipTitle": "Mobile App Development Intern",
          "internshipDescription": "We are looking for a Mobile App Development Intern to join our team...",
          "experienceRequired": "Familiarity with Flutter and Dart is preferred",
          "perksAndBenefits": [
            "Flexible working hours",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "San Francisco", "state": "CA", "country": "USA"},
          "fields": ["Mobile Development", "UI/UX Design", "Software Engineering"],
          "stipendRange": "USD 2000 - USD 3000"
        }
      ]
    },
    {
      "companyName": "ABC Internship Inc.",
      "companyLink": "https://www.abcinternshipinc.com",
      "internshipListings": [
        {
          "internshipTitle": "Web Design Intern",
          "internshipDescription": "We are seeking a talented Web Design Intern to join our team...",
          "experienceRequired": "Some prior experience in web design is preferred",
          "perksAndBenefits": [
            "Flexible schedule",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "New York", "state": "NY", "country": "USA"},
          "fields": ["Graphic Design", "Web Development", "User Experience"],
          "stipendRange": "USD 1500 - USD 2500"
        }
      ]
    },
    {
      "companyName": "XYZ Internship Solutions",
      "companyLink": "https://www.xyzinternshipsolutions.com",
      "internshipListings": [
        {
          "internshipTitle": "Product Management Intern",
          "internshipDescription": "We are seeking a skilled Product Management Intern to join our team...",
          "experienceRequired": "Some prior experience in product management is preferred",
          "perksAndBenefits": [
            "Flexible working hours",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "Seattle", "state": "WA", "country": "USA"},
          "fields": ["Product Management", "Marketing", "Data Analysis"],
          "stipendRange": "USD 3000 - USD 4000"
        }
      ]
    },
    {
      "companyName": "PQR Internship Industries",
      "companyLink": "https://www.pqrinternshipindustries.com",
      "internshipListings": [
        {
          "internshipTitle": "Software Development Intern",
          "internshipDescription": "We are seeking an experienced Software Development Intern to join our team...",
          "experienceRequired": "Some prior experience in software development is preferred",
          "perksAndBenefits": [
            "Flexible working hours",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "Chicago", "state": "IL", "country": "USA"},
          "fields": ["Web Development", "Mobile Development", "Backend Development"],
          "stipendRange": "USD 2500 - USD 3500"
        }
      ]
    },
    {
      "companyName": "LMN Internship Corporation",
      "companyLink": "https://www.lmninternshipcorporation.com",
      "internshipListings": [
        {
          "internshipTitle": "Data Analysis Intern",
          "internshipDescription": "We are seeking a talented Data Analysis Intern to join our team...",
          "experienceRequired": "Some prior experience in data analysis is preferred",
          "perksAndBenefits": [
            "Flexible schedule",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "Los Angeles", "state": "CA", "country": "USA"},
          "fields": ["Data Analysis", "Business Intelligence", "Statistics"],
          "stipendRange": "USD 1500 - USD 2500"
        }
      ]
    },
    {
      "companyName": "GHI Technologies Internship",
      "companyLink": "https://www.ghitechnologiesinternship.com",
      "internshipListings": [
        {
          "internshipTitle": "Mobile App Development Intern",
          "internshipDescription": "We are seeking a talented Mobile App Development Intern to join our team...",
          "experienceRequired": "Some prior experience in mobile app development is preferred",
          "perksAndBenefits": [
            "Flexible working hours",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "Boston", "state": "MA", "country": "USA"},
          "fields": ["Mobile Development", "UI/UX Design", "Software Engineering"],
          "stipendRange": "USD 2500 - USD 3500"
        }
      ]
    },
    {
      "companyName": "DEF Innovations Internship",
      "companyLink": "https://www.definnovationsinternship.com",
      "internshipListings": [
        {
          "internshipTitle": "Front-End Development Intern",
          "internshipDescription": "We are seeking a skilled Front-End Development Intern to join our team...",
          "experienceRequired": "Some prior experience in front-end development is preferred",
          "perksAndBenefits": [
            "Flexible schedule",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "San Diego", "state": "CA", "country": "USA"},
          "fields": ["Web Development", "User Experience", "Graphic Design"],
          "stipendRange": "USD 2000 - USD 3000"
        }
      ]
    },
    {
      "companyName": "JKL Enterprises Internship",
      "companyLink": "https://www.jklenterprisesinternship.com",
      "internshipListings": [
        {
          "internshipTitle": "Full-Stack Development Intern",
          "internshipDescription": "We are seeking a skilled Full-Stack Development Intern to join our team...",
          "experienceRequired": "Some prior experience in full-stack development is preferred",
          "perksAndBenefits": [
            "Flexible working hours",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "Austin", "state": "TX", "country": "USA"},
          "fields": ["Web Development", "Backend Development", "Database Management"],
          "stipendRange": "USD 3000 - USD 4000"
        }
      ]
    },
    {
      "companyName": "MNO Systems Internship",
      "companyLink": "https://www.mnosystemsinternship.com",
      "internshipListings": [
        {
          "internshipTitle": "Security Engineering Intern",
          "internshipDescription": "We are seeking an experienced Security Engineering Intern to join our team...",
          "experienceRequired": "Some prior experience in security engineering is preferred",
          "perksAndBenefits": [
            "Flexible working hours",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "Washington D.C.", "state": "DC", "country": "USA"},
          "fields": ["Security Engineering", "Information Technology", "Risk Management"],
          "stipendRange": "USD 2500 - USD 3500"
        }
      ]
    },
    {
      "companyName": "QRS Technologies Internship",
      "companyLink": "https://www.qrstechnologiesinternship.com",
      "internshipListings": [
        {
          "internshipTitle": "Cloud Computing Intern",
          "internshipDescription": "We are seeking a skilled Cloud Computing Intern to join our team...",
          "experienceRequired": "Some prior experience in software development and cloud computing is preferred",
          "perksAndBenefits": [
            "Flexible working hours",
            "Training and mentorship",
            "Opportunity for full-time employment after internship"
          ],
          "location": {"city": "Denver", "state": "CO", "country": "USA"},
          "fields": ["DevOps", "Software Development", "Cloud Computing"],
          "stipendRange": "USD 2000 - USD 3000"
        }
      ]
    }
  ]
}
''';