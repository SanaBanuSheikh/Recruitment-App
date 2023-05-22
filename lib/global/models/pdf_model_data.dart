import 'package:resume_builder/global/models/pdf_model.dart';

PdfModel _pdfEmpty = PdfModel.createEmpty();

PdfModel pdfModelData = _pdfEmpty.copyWith(
  pdfId: '9ebe1243-de7a-4866-a006-35bcaa2d3b06',
  employment: [employmentSectionData],
  education: [educationSectionData],
  links: [linksData],
  activities: [activitySectionData],
  resumePersonal: personalData,
  resumeSummary: summary,
  skills: skillsData,
  languages: language,
  
);



Section employmentSectionData = const Section(
    sectionId: 'employmentSection',
    textOne: 'Flutter Developer',
    textTwo: 'Guru Nanak Dev Engeeneering College',
    textThree: 'Bidar, Karnataka',
    startDate: 'JUNE 2022',
    endDate: 'PRESENT',
    description:
        'I am a motivated IT graduate looking forward to expanding my knowledge and career in the IT sector. Along with that, I want to experience working with professionals in the field so that I am able to stay up-to-date and learn the best practices that should be used while working in the IT sector. As for me, some of my greatest strengths are communicating and working alongside my peers.');

Section activitySectionData = const Section(
    sectionId: 'activitySection',
    textOne: 'Hobbies',
    textTwo: '',
    textThree: '',
    startDate: 'Present',
    endDate: '',
    description: 'Sports');

Section educationSectionData = const Section(
    sectionId: 'educationSection',
    textOne: 'Guru Nanak Dev Engeeneering College',
    textTwo: 'CSE Branch ',
    textThree: 'Bidar, Karnataka',
    startDate: 'June 2019',
    endDate: 'Aug 2023',
    description: '3rd Year CSE Student');

Summary summary = const Summary(
    professionalSummary:
        'I am a motivated IT graduate looking forward to expanding my knowledge and career in the IT sector. Along with that, I want to experience working with professionals in the field so that I am able to stay up-to-date and learn the best practices that should be used while working in the IT sector. As for me, some of my greatest strengths are communicating and working alongside my peers.');

Personal personalData = const Personal(
  firstName: 'Sana',
  lastName: 'Banu',
  jobTitle: 'Full Stack Developer',
  email: 'sanabanu@gmail.com',
  phoneNumber: '+919353952544',
);

Links linksData =
    const Links(linksId: '01', linkName: 'Linkedin', linkUrl: 'https://www.linkedin.com/in/sanabanu815a61217/');

List<Skill> skillsData = const [
  Skill(skillId: '01', skillName: "Flutter"),
  Skill(skillId: '02', skillName: "Dart"),
  Skill(skillId: '03', skillName: "C#"),
  Skill(skillId: '04', skillName: "Firebase"),
  Skill(skillId: '05', skillName: "SQL"),
  Skill(skillId: '06', skillName: "Python"),
  Skill(skillId: '07', skillName: "Java"),
  Skill(skillId: '08', skillName: "Javascript"),
  Skill(skillId: '09', skillName: "Canva"),
  
];

List<Skill> language = const [
  Skill(skillId: '01', skillName: "English"),
  Skill(skillId: '02', skillName: "Hindi"),
  Skill(skillId: '03', skillName: "Urdu"),
];
