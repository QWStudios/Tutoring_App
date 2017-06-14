-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2017 at 08:21 PM
-- Server version: 5.6.33
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorapplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appointment_ID` int(11) NOT NULL,
  `Course_ID` char(7) NOT NULL,
  `Ram_ID` varchar(9) NOT NULL,
  `Tutor_ID` int(11) NOT NULL,
  `Student_Appointment_ID` int(11) NOT NULL,
  `Tutor_Appointment_ID` int(11) NOT NULL,
  `Appointment_Date` varchar(8) NOT NULL,
  `Appointment_Begin` char(4) NOT NULL,
  `Appointment_End` char(4) NOT NULL,
  `Building` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appointment_ID`, `Course_ID`, `Ram_ID`, `Tutor_ID`, `Student_Appointment_ID`, `Tutor_Appointment_ID`, `Appointment_Date`, `Appointment_Begin`, `Appointment_End`, `Building`) VALUES
(81, 'BCS360', 'R12345678', 22, 33, 26, '040617', '0000', '0030', 'Campus Center'),
(84, 'BCS360', 'R12345678', 6, 62, 44, '042817', '0030', '0130', 'Campus Center'),
(87, 'BCS360', 'R12345678', 20, 63, 46, '043017', '0000', '0030', 'Campus Center'),
(107, 'BCS360', 'R12345678', 31, 82, 70, '051917', '0800', '0830', 'Sinclair Hall'),
(94, 'BCS360', 'R12345678', 6, 64, 47, '051017', '0700', '0800', 'Campus Center'),
(109, 'BCS101', 'R12345678', 33, 100, 75, '051617', '0600', '0630', 'Alumni Hall'),
(112, 'BCS101', 'R12345678', 34, 106, 77, '051617', '0300', '0400', 'Dewey Hall');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` char(7) NOT NULL,
  `Course_Description` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `Course_Description`) VALUES
('BCS120', 'Foundations of Computer Programming I. This course introduces the C++ Programming Language as a means of developing structured programs. Students will be taught to develop algorithms using top-down stepwise refinement. Students will be introduced to the concept of Object Oriented programming through the use of pre- defined classes. In addition, students will get a thorough exposure to C++ syntax and debugging techniques. Credits: 3'),
('BCS101', 'Programming Concepts and Problem Solving. This course will provide an introduction to programming logic and problem solving techniques using different programming languages. The topics covered in this course will provide the skills needed to learn languages such as Visual Basic, C+ + and JAVA. Topics include such items as constants and variables, data types, scope of variables, basic logic constructs, subroutines and functions. Students who have completed BCS 120, BCS 185 or equivalent cannot take BCS 101. Credits: 3'),
('BCS102', 'Computer Concepts and Applications. This is an introductory course in the use of personal computers in today\'s society. Students will receive instruction in basic computer concepts and terminology, the fundamentals of the Windows operating system and have hands on experience at the beginning to intermediate level using Microsoft Word, Excel, and PowerPoint. The Internet will be used to supplement textbook and lecture materials. Computer Systems students cannot use BCS 102 to meet a BCS Elective requirement. Credits: 3'),
('BCS110', 'Introductory Special Topics in Computer Programming and Information Systems. This course will cover introductory topics that are not covered in the regular curriculum. Topics may vary from semester to semester and reflects the interests and needs of students, faculty and industry. Permission of Department Chair is required. Prerequisite(s): Permission of Department Chair (3,0) Credits:3'),
('BCS111', 'Introductory Special Topics in Computer Programming and Information Systems. This course will cover introductory topics that are not covered in the regular curriculum. Topics may vary from semester to semester and reflects the interests and needs of students, faculty and industry. Permission of Department Chair is required. Prerequisite(s): Permission of Department Chair Credits: 3\r\n'),
('BCS112', 'Introductory Special Topics in Computer Programming and Information Systems. This course will cover introductory topics that are not covered in the regular curriculum. Topics may vary from semester to semester and reflects the interests and needs of students, faculty and industry. Permission of Department Chair is required. Prerequisite(s): Permission of Department Chair Credits:3'),
('BCS113', 'Introductory Special Topics in Computer Programming and Information Systems. This course will cover introductory topics that are not covered in the regular curriculum. Topics may vary from semester to semester and reflects the interests and needs of students, faculty and industry. Permission of Department Chair is required. Prerequisite(s): Permission of Department Chair Credits: 3'),
('BCS114', 'Introductory Special Topics in Computer Programming and Information Systems. This course will cover introductory topics that are not covered in the regular curriculum. Topics may vary from semester to semester and reflects the interests and needs of students, faculty and industry. Permission of Department Chair is required. Prerequisite(s): Permission of Department Chair Credits: 3'),
('BCS130', 'Website Development I. This is an introductory course in Web page authoring in which students will create Web pages using HTML (HyperText Markup Language) and CSS (Cascading Style Sheets). In addition to the introductory topics of changing text appearance, creating hyperlinks, and inserting images into a Web page, advanced topics such as layout, tables, and forms will also be covered. Credits: 3'),
('BCS136', 'Programming in COBOL I. The fundamental skills and knowledge of computer programming using COBOL are developed in this course. Among the topics studied are elements of the COBOL programming language and application of the language to solving business computer applications. Credits: 3'),
('BCS148', '8086 and 8088 Assembler Programming I. This course examines the architecture and instruction set of the INTEL 8086 and 8088 chips used on the IBM-PC. Topics include: machine execution; addressing; input/output; arithmetic; branching, and control instructions. Students use the IBM-PC macro assembler to code and debug typical business applications. Credits: 3\r\n'),
('BCS160', ' Computers, Society and Technology. This is an introductory course that provides students with the knowledge to stay current and informed in a technology-oriented, global society. Students will receive instruction in basic computer concepts and terminology, the fundamentals of the Windows operating system and have hands-on experience at the beginning to intermediate level using Microsoft Excel and Access. The Internet will be used to supplement textbook and lecture materials. Note: Students taking this course may not receive credit for BCS 102 or 202. Credits: 3'),
('BCS185', 'Programming in Visual Basic. The Visual Basic language is used to develop Windows applications in a fast, reliable and efficient manner. This course will present the main components of a Visual Basic program, and will use these components to develop increasingly more complex Windows applications. The standard Windows forms and controls will be explored in providing the skills and knowledge necessary to write these event driven graphical interfaces. BCS 101 cannot be taken concurrently with BCS 185. Prerequisite(s): BCS 101 Credits: 3\r\n'),
('BCS202', 'Computer Applications for Business/Sport Management. In this course students will learn the fundamentals of computer applications for business including sport management. This course will cover file management and have hands on experience at the beginning through advanced level using microcomputer spreadsheet and database applications. Students will use a spreadsheet program to enter formulas, create charts, execute functions and macros, create, sort and query lists, create pivot tables, create templates, and work with multiple worksheets and workbooks. Students will use a database program to create data table structures, queries, reports, and forms, create switchboards, pivot tables, and pivot charts. Please note: This course may not be used to satisfy the requirements of the B.S. in Computer Programming and Information degree. Students completing this course may not receive credit for SMT 202. Prerequisite(s): BCS 102 with a grade of C or higher Credits: 3\r\n'),
('BCS204', 'Comparative Programming Languages. A study of programming languages with an emphasis on general concepts and constructs such as repetition, decisions and modularization. Procedural vs. object-oriented program design paradigms and examples of each will be a major portion of the course. Examples comparing how different kinds of languages approach the same problem will also be included. Prerequisite(s): BCS 101 or BCS 191 or BCS 100 or BCS 102 Credits: 3'),
('BCS205', 'Hardware and Software Selection. This course provides a hardware and software overview of the microcomputer industry. The designs of various commercially available computers and their input/output devices will be explored in detail. Criteria for equipment selection decision making will be provided. Among the topics to be covered are microcomputer systems, monitors, printers, plotters, modems, A/D and D/A converters and operating systems. Credits: 3'),
('BCS208', 'Introduction to Networks. This course introduces the architecture, structure, functions, components, and models of the Internet and other computer networks. The principles and structure of IPv4 and IPv6 addressing and the fundamentals of Ethernet concepts, media, and operations are introduced to provide a foundation for the curriculum. By the end of the course, students will be able to build simple LAN’s, perform basic configurations for routers and switches, and implement IP addressing schemes. The laboratory component of this course will give the students hands-on experience configuring equipment needed to build a LAN. Prerequisite(s): Sophomore Standing Credits: 3'),
('BCS209', 'Routing and Switching Essentials. This course describes the architecture, components, and operations of routers and switches in a small network. Students learn how to configure a router and a switch for basic functionality. By the end of this course, students will be able to configure and troubleshoot routers and switches and resolve common issues with RIPv1, RIPv2, single-area and multi-area OSPF, virtual LANs, and inter-VLAN routing in both IPv4 and IPv6 networks. The laboratory component of this course will give the students hands-on experience configuring routers, switches and basic WAN connectivity. Prerequisite(s): BCS 208 with a grade of C or higher (2,3) Credits: 3'),
('BCS215', 'UNIX Operating Systems. This course develops the fundamental knowledge of computer operating systems using UNIX. Topics include basic understanding of the UNIX system, utilizing the file system, programming language and security system. BCS 120 may be taken as a Prerequisite or Corequisite. Prerequisite(s): BCS 120 Corequisite(s): BCS 120 Credits: 3'),
('BCS230', ' Foundations of Computer Programming II. This course expands the knowledge and skills of Foundations of Computer Programming I. Among the topics covered are: arrays, pointers, strings, classes, data abstraction, inheritance, composition and overloading. Prerequisite(s): BCS 120 or DPR 120 with a grade of C or higher Credits: 3\r\n'),
('BCS232', 'Electronic Commerce. This cross-listed business management and business computer systems course covers electronic commerce (EC) foundations, retailing methodologies, and marketing research. Focus will be on the various forms, strategies, and implementations of EC including business-to-business (B2B), business-to-consumer (B2C), and consumer-to-consumer (C2C). Also covered will be social networking, electronic payment systems, and public policy issues including privacy and intellectual property matters as well as recent information technology advancements. Students may receive credit for either BUS 232 or BCS 232 but not for both. Prerequisite(s): BUS 109 and BCS 101 or BCS 102 Credits: 3'),
('BCS235', ' JavaScript and jQuery. This course introduces students to JavaScript and jQuery. Students will learn how to write their own scripts in JavaScript, learn jQuery syntax, and use the jQuery and jQuery UI libraries. Students will learn how to devise jQuery and jQuery UI scripting techniques such as effects, animation, tabbed panels, menus, accordions, content sliders, drag and drop, tooltips, date pickers, custom tooltips, dialogs and portlets, and interactive image sliders and carousels. Students who have taken BCS 250 cannot receive credit for this course. Prerequisite(s): BCS 130 with a grade of C or higher. Credits: 3'),
('BCS237', 'Intermediate COBOL Programming. This course expands the skills and knowledge of computer programming using COBOL. Topics to be covered include multi-level control break processing, file handling techniques for both sequential and indexed files, table processing, and searching and sorting methods. Prerequisite(s): BCS 136 with a grade of C or higher or DPR 136 with a grade of C or higher Credits: 3'),
('BCS240', 'Website Development II. Students will learn how to create websites that deliver a seamless experience across a diverse range of desktop and mobile devices using the same code base. In addition, students will learn how to perform forms validation, create navigation and menuing systems, build responsive layouts with flexible content, code media queries, and create and modify template and child pages. Students will use jQuery mobile and CSS 3 to create user interfaces with toolbars, animations, buttons, forms, lists, events, and themes. Prerequisite(s): BCS 130 with a grade of C or better (3,0) Credits: 3'),
('BCS250', 'JavaScript and jQuery. This course introduces students to JavaScript and jQuery. Students will learn how to write their own scripts in JavaScript, learn jQuery syntax, and utilize the jQuery library. Students will also learn how to employ the scripting techniques seen on many popular websites, such as effects, animation, tabbed panels, accordions, content sliders, form validation, interactive galleries, and sorting data. Prerequisite(s): BCS 120 and BCS 130 -- both with a grade of C or better (3,0) Credits: 3'),
('BCS255', 'Operating Systems. This course develops the fundamental knowledge of computer operating systems. Topics included in this study are types of operating systems, facilities and features of the different systems and user techniques. Credits: 3\r\n'),
('BCS260', 'Introduction to Database Systems. This course provides the fundamental knowledge of database concepts. Topics studied will include the history and advantages of database systems, and the process of database design including entity-relationship diagrams and database normalization. Students will have hands-on experience using SQL (Structured Query Language). Prerequisite(s):(BCS 120 or BCS 185) and (BCS 160 or BCS 202) all with a grade of C or higher Credits: 3\r\n'),
('BCS262', 'Data Communications. This course is an introduction to the concepts and applications of computer networking and its role in the business world today. Topics include: history of networking and applications, voice and data communications, hardware, transmission, network topologies, network analysis, the OSI model, design, implementation and management issues. Credits: 3'),
('BCS285', 'Advanced Programming Visual Basic. This course provides an in-depth study of the skills and knowledge of Visual Basic programming. It is intended to reinforce and build upon the introductory Visual Basic by extending coverage of the programming language and introducing more advanced features of the language. Some of the advanced topics covered will include multitier applications, database programming, programming for the web and web forms, using report mechanisms, object- oriented terminology, creating classes and instantiating objects. Prerequisite(s): BCS 185 with a grade of C or higher. Credits: 3'),
('BCS300', 'Management Information Systems. Managers have increasing responsibility for determining their information system needs and for designing and implementing information systems that support these needs. Management information systems integrate, for purposes of information requirements, the accounting, finance, and operations management functions of an organization. This course will examine the various levels and types of software and information systems required by an organization to integrate these functions. Prerequisite(s): BUS 109 or BUS 111 Credits: 3'),
('BCS301', 'Systems Analysis and Design. This course explores the major issues in the analysis and design of a system, including methods of data collection, information requirements analysis, and the analysis process are discussed. Emphasis is placed on the importance of the user in the design process and focuses on approaches that improve the successful implementation of a computer system. Topics include general systems theory, Systems Development Life Cycle, data flow diagrams, data dictionary, hardware and software evaluation, feasibility analysis, CASE tools and prototyping. Students are required to demonstrate their skill in using project management and diagramming application software. Note: Credit cannot be given for both BCS 265 and BCS 301. Prerequisite(s): BCS 120 or BCS 185 with a grade of C or higher and Junior Level Status. Credits: 3'),
('BCS302', 'Systems Analysis and Design II. This is an advanced course in Systems Analysis and Design. Students will utilize the tools covered in BCS 301 to analyze system designs. Topics covered in the design phase will include input, output, and database and user interface design. A CASE Tool and/or other rapid application development tools will be used to create the interfaces. Additional topics in the implementation and maintenance phases will include testing, implementation and maintenance. Object-oriented systems and UML will also be covered. Students will analyze and prepare various case projects and will present and document their results. Prerequisite(s): BCS 301 with a grade of C or higher. Credits: 3'),
('BCS303', 'XML. Students will be introduced to the basic intermediate concepts of XML, the Extensible Markup Language. Students will learn how to create the XML document, work with name- spaces, Document Type Definitions, and XML schemas. In addition, students will also use the advanced features of XML, such as XPath and the XSLT stylesheet language to transform XML documents. Prerequisite(s): BCS 130 and (BCS 120 or BCS 185) all with a grade of C or higher Credits: 3'),
('BCS311', 'Local Area Networks and Server Administration. This course will provide an introduction to local area networking concepts. These ideas will be explored in conjunction with an introduction to the concepts and tools necessary to implement, administer and troubleshoot the Microsoft Windows network. Hands-on experience will be used in the presentation of system administration tools. Prerequisite(s): BCS 262 with a grade of C or higher Credits: 3'),
('BCS315', 'UNIX Operating Systems II. This course further develops the knowledge of UNIX with an emphasis on the practice skills required to deploy and administer modern Unix and Linux systems. Topics include selecting and installing operating systems, adding users, virtualization, and the configuration and management of storage, networks and servers. Particular stress is paid system administration practices that foster the creation and maintenance of scalable and secure systems. Prerequisite(s): BCS 215 with a grade of C or higher. Credits: 3'),
('BCS316', 'PERL Programming. This course provides an introduction to programming in the Perl language. Students will learn the Pearl syntax, the basics of using regular expressions, how to use Pearl data types, and how to access and manipulate files. Students are also introduced to database connectivity and debugging techniques. Prerequisite(s): BCS 215 and (BCS 230 or BCS 285) all with a grade of C or higher. Credits: 3\r\n'),
('BCS317', 'Enterprise Resource Planning. Enterprise Resource Planning (ERP) is an organizational and information systems approach that integrates planning, customer relationship management, decision making, master scheduling, material requirements planning, marketing, forecasting, sales, finance, electronic commerce, and human resources. The course will include lectures and extensive use of supporting ERP software. Note: Students who have previously completed IND 313 cannot receive credit for BUS/ BCS 313. Students completing this course cannot receive credit for BUS 317. Prerequisite(s): BUS 109 Credits: 3'),
('BCS320', 'Scaling Networks. This course describes the architecture, components, and operations of routers and switches in a larger and more complex network. Students learn how to configure routers and switches for advanced functionality. By the end of this course, students will be able to configure and troubleshoot routers and switches and resolve common issues with OSPF, EIGRP, STP, and VTP in both IPv4 and IPv6 networks. Students will also develop the knowledge and skills needed to implement DHCP and DNS operations in a network. Note: Students who have completed BCS 330 or BCS 335 may not receive credit for BCS 320. Prerequisite(s): BCS 209 with a C or higher. Credits: 3\r\n'),
('BCS321', 'Connecting Networks. This course discusses the Wide Area Network (WAN) technologies and network services required by converged applications in a complex network. The course enables students to understand the selection criteria of network devices and WAN technologies to meet network requirements. Students learn how to configure and troubleshoot network devices and resolve common issues with data link protocols. Students will also develop the knowledge and skills needed to implement IPSec and virtual private network (VPN) operations in a complex network. Note: Students who have completed BCS 330 or BCS 335 may not receive credit for BCS 321. Prerequisite(s): BCS 320 with a grade of C or higher Credits: 3'),
('BCS340', 'Introduction to Algorithms. This course provides an introduction to efficient solutions for a variety of algorithmic problems commonly encountered in application programming. Problems are discussed and students are guided through the discovery of progressively more efficient solutions. Areas to be discussed may include trees, graphs, sorting, searching, and testing. Advanced techniques, including recursion, dynamic programming, greedy algorithms and parallel programming may be used to solve some of the problems. Small programming assignments will be required to illustrate an understanding of the details of the algorithms. Prerequisite(s): BCS 230 with a grade of C or higher. Credits: 3\r\n'),
('BCS345', 'JAVA Programming. This course is designed for students with some experience with programming. The syntax of the Java programming language, object-oriented programming, creating graphical user interfaces (GUI), exceptions, file input/output (I/O), and how to create Java applications and applets will be covered. Prerequisite(s): BCS 230 or BCS 285 with grade of a C or higher. Credits: 3\r\n'),
('BCS346', 'Object Oriented Programming Using C++. An introduction to the Fundamentals of Object Oriented Programming using the Turbo C++ compiler. The course will cover the syntax of the C++ language by building upon traditional C programs as well as the methodology to design and implement an Object Oriented Program. Prerequisite(s): BCS 196 with a C or higher. Credits: 3'),
('BCS350', 'Web Database Development. This advanced course prepares the student to use database management systems with web server software to develop and maintain the information content of a web site. Students in the course should have prior knowledge of programming and database management systems. Prerequisite(s): BCS 260 with a grade of C or higher. Credits: 3\r\n'),
('BCS360', ' Programming in SQL. The second in a two course sequence applies the knowledge of BCS260 to administer and implement relational database systems. Topics covered may include: embedded SQL and other mixed language mechanisms; PL/SQL; advanced/optimized SQL queries; transaction management including concurrency and recovery; schema refinement; higher-level normal forms; integrity; security; and database administration. Prerequisite(s): BCS 230, BCS 260 with a grade of C or higher. Credits: 3'),
('BCS370', 'Data Structures. This course will present sequential and linked representations of various built-in and abstract data structures including arrays, records, stacks, queues and trees. Algorithms will be developed relating to various sorting and searching techniques, merging and recursion. A high-level structured programming language, such as C, using both static and dynamic storage concepts, will be used in exploring and developing these algorithms. Prerequisite(s): BCS 230 with a grade of C or higher. Credits: 3'),
('BCS378', 'Information Security. Topics include cryptology principles, security, accuracy and privacy in computer systems with an analysis of hardware and software measures and counter-measures. A study of the National Bureau of Standards- DES (Data Encryption Standard) and other hardware and software techniques are included. Two semesters of a programming language required. Prerequisite(s): BCS 262 and (BCS 230 or BCS 285) all with a C or higher Credits: 3'),
('BCS380', 'Advanced Database Programming. This course will provide a detailed examination of a relational database management system and its procedural language such as Oracle and PL/SQL or SQL Server and T-SQL. General programming concepts such as conditional and iterative control, error handling and built-in exceptions will be discussed. Covered in more detail will be topics such as cursors, triggers, and the stored functions, procedures and packages. These topics will then be explored through laboratory assignments using a RDBMS such as Oracle or SQL server. Prerequisite(s): BCS 360 with a grade of C or higher Credits: 3'),
('BCS390', 'Database Administration and Security. This course provides the knowledge necessary to handle database administration and database security. Topics studied may include installation and configuration of a database, managing and securing user resources and privileges, data integrity, networking, optimization, and backup and recovery. Hands-on activities with a major commercial DBMS will be assigned to complement the lectures and written work and to develop practical skills. Prerequisite(s): BCS 260 and BCS 215 with a grade of C or higher. Credits: 3'),
('BCS405', 'IS Development Project Management. This course will cover Project Management tools and techniques for Systems Development projects. Students will learn Project Management, Scope Management, Time Management, Cost Management, Quality Management, Human Resource Management and Communications Management all in the context of running successful information systems development and implementation projects. MS project will be used as a tool to managing all of these areas. Prerequisite(s): BCS 300 with a grade of C or higher. Credits: 3'),
('BCS410', 'Computer Architecture. Computer Architecture is the study of hardware and software components of business information systems. Thorough understanding of the workings of the digital computer system is expected. Topics include: hardware components, the machine cycle, binary arithmetic, systems software, and assembly language. These topics are evaluated with respect to their impact on the development of business information systems. Two semesters of a programming language required. Prerequisite(s): Two semesters of a programming language required with a grade of C or higher and BCS 262 with a grade of C or higher. Credits: 3'),
('BCS413', 'Advanced Enterprise Resource Planning. This advanced-level Enterprise Resource Planning (ERP) course includes high-level information technology coverage of Scheduling, Planning, MRP, Logistics, Warehousing, Procurement, Quality, Vendor Management, Cost Accounting, Forecasting, KPI, Supply Chain, and Customer Resource Management. Also covered are concepts and software applications pertaining to product design, development, manufacturing (production), marketing, sales, and field service. This course emphasizes proficiency in the skill sets typically required within industry practices. Prerequisite(s): BUS 300 or BCS 300 and (BUS 317 or BCS 317) Credits: 3\r\n'),
('BCS415', 'Operating System Internals and Design. This course will involve the study of the fundamentals of operating systems design and implementation. The concepts covered include process management, memory management, file systems, I/O system management, distributed systems, and security. Students will examine how these concepts are found in several current open-source operating systems, including Vista, UNIX and/or Linux. Prerequisite(s): BCS 215 and (BCS 230 or BCS 285) all with a grade of C or higher Credits: 3\r\n'),
('BCS420', 'Client/Server Computing. Included in this course are a wide range of issues, methods, techniques and case examples for developing and managing client/server and distributed systems. These include client/ server development using (RAD) methodologies, transaction process monitors, types of aboveware and middleware, middleware standards (DCE,RPC and CORBA), managing client/server environments, software installation and distribution, electronic mail architectures in C/S products. Prerequisite(s): BCS 260 Credits: 3'),
('BCS421', 'Android Mobile Application Development. This course provides an introduction to Android mobile application development. Techniques for designing the user interface will be discussed. The Android application lifecycle and issues related to battery life will be covered. Storing application data using a database will be explored. Students will receive hands-on experience using the Android mobile application development platform. Prerequisite(s): BCS 345 with a C or higher. Credits: 3'),
('BCS422', ' Mobile Application Development. This course provides an introduction to iOS mobile application development for Apple devices. Students will be introduced to the Swift programming language. Emphasis will be placed on good programming practices, on object oriented techniques, and on using established design patterns for mobile applications. Students will receive hands-on experience using the Xcode development environment to build example apps. Basic instruction in Objective-C will provide students with the ability to read and reuse legacy iOS code. Prerequisite(s): BCS 345 or BCS 370 with a grade of C or higher. Credits: 3'),
('BCS425', 'Business Intelligence and Data Warehousing. Business Intelligence is the transformation of data into actionable information. This information is used by businesses to drive high-level decision making. This course is concerned with extracting data from the information systems that deal with the day-to-day operations and transforming it into data that can be used for decision making. Students will learn how to design and create a data warehouse, and how to utilize the process of extracting, transforming, and loading (ETL) data into data warehouses. Students will design and construct dynamic reports using the data warehouse and multi-dimensional online analytical processing (OLAP) cubes as the data source. Prerequisite(s): BCS 260 with a grade of C or higher. Credits: 3'),
('BCS427', ' Game Programming. This course provides an introduction to two-dimensional game programming. Students will learn how to draw and manage game objects. Techniques for adding sound to a game will be discussed. Creation of computer controlled game objects will also be covered. Students will receive hands-on experience with a current game development platform. Students will be expected to create their own two-dimensional game by the end of the course. Prerequisite(s): BCS 345 with a grade of C or higher. Credits: 3'),
('BCS430W', 'Senior Project (Writing Intensive). The primary objective of this course is to give Computer Programming and Information Systems students an opportunity to integrate techniques and concepts acquired in their other courses. Elements will be drawn primarily from BCS301 and BCS260, in addition to other courses in the student\'s selected track of study. The course is experiential in nature i.e. the student will be required to produce results for use by real individuals and will be evaluated both on process and product. In addition to prerequisites, a second level programming course with a grade of C or better, and Senior level standing is required. This is a writing-intensive course. Note: Students cannot get credit for BSC 430 and 430W; BCS 430W can be used to fulfill the writing intensive requirement. Note: Offered at the discretion of the Computer Programming and Info Systems Department. Prerequisite(s): EGL 101, BCS 260, BCS 301 and (BCS 230 or BCS 285 all with a grade of C or higher Cr'),
('BCS440', 'CPIS Internship. In this course, the student works under the tutelage of a professional who serves as site supervisor in an organization that provides information services. The work done by the student is guided by learning objectives agreed to by the site supervisor, the faculty member and the student. Students are required to submit a written proposal, progress reports, and a final report on their experience to the client and to the department. The course offers an ideal opportunity to test theory in practice and to gain experience in a realistic information provision situation. The experience is expected to be mutually beneficial for the organization and student. Prerequisite(s): Junior Status and GPA >=3.0. Credits: 3'),
('BCS450', 'Special Topics in Computer Programming and Information Systems. Courses that range from 450-451 will cover topics not covered in the regular curriculum. Topics may vary from term to term and reflect the interests of students, faculty and industry. Topics may include wireless communications, rapid application development and other emerging technologies. Prerequisite(s): Permission of Department Chair Credits: 3'),
('BCS451', 'Special Topics. Courses that range from 450-451 will cover topics not covered in the regular curriculum. Topics may vary from term to term and reflect the interests of students, faculty and industry. Topics may include wireless communications, rapid application development and other emerging technologies. Prerequisite(s): Permission of Department Chair Credits: 3\r\n'),
('BCS460', 'Independent Study. This is an independent study course designed to offer the student experience in research of a specialized area of interest. The student will have an opportunity to work individually or with a group in designing, developing and presenting a research project. The topic must be approved by a faculty member. Students will be required to submit full documentation and present their final results. Prerequisite(s): Permission of Department Chair Credits: 3'),
('ECO110', 'Students will learn how to navigate the financial decisions they must face\r\n\r\nand how to make informed decisions related to budgeting, banking, credit,\r\n\r\ninsurance, spending, taxes, saving, investing, inheritance, and living\r\n\r\nindependently. The course will develop financial literacy skills, an\r\n\r\nunderstanding of economic principles, and will provide a basis for\r\n\r\nresponsible citizenship and career success. Credits: 3 (3,0)'),
('ECO120', 'This course provides an overview of current global economic issues. Basic\r\n\r\neconomic concepts are introduced in order to explain differences in the level\r\n\r\nof development among countries, the direction of trade, the causes and\r\n\r\neffects of international financial crises, and the motivations of some countries\r\n\r\nto transition to a market economy. The course also discusses the way in\r\n\r\nwhich countries coordinate efforts to deal with matters of international\r\n\r\nconcern such as pollution and global warming. Topics also include the role of\r\n\r\ninternational institutions including the World Bank, the international Monetary\r\n\r\nFund, the World Trade Organization, and the United Nations. Credits: 3 (3,0)'),
('ECO156', 'Principles of Economics (Macroeconomics)\n\nThis course is designed to introduce classic macroeconomic issues such as\n\nunemployment, inflation, national income and economic growth. The course\n\nwill provide a unified framework to address these issues and to study the\n\nimpact of different policies, such as monetary and fiscal policies, on the\n\naggregate behavior of the economy. Analytical tools will be used to\n\nunderstand the experiences of the United States and other countries, and to\n\naddress how current policy initiatives affect their macroeconomic\n\nperformance. Credits: 3 (3,0)'),
('ECO157', 'Principles of Economics\r\n\r\n(Microeconomics)\r\n\r\nThis course introduces students to fundamental economic concepts and\r\n\r\ntheory, including demand, supply, and the formation of equilibrium prices in\r\n\r\nproduct and resource markets. Students will learn a specific set of analytical\r\n\r\ntools as well as how to apply them to current policy issues. In addition, the\r\n\r\ncourse offers an introduction to applied fields such as industrial organization\r\n\r\n(market structures), labor economics, international trade, and market failure.\r\n\r\nCredits: 3 (3,0)'),
('ECO205', 'Introduction to Social Science Modeling\r\n\r\nThis course introduces students to the technique of social science modeling\r\n\r\nby learning and applying a variety of different models of individual and social\r\n\r\nbehavior. It will use basic concepts in probability and simple economic\r\n\r\nmodels (including, but not limited to, supply and demand, two-person\r\n\r\nprisoners’ dilemma, and indifference curves) to understand issues such as\r\n\r\ncompetition, purchasing/investment decisions, risk-taking and risk-avoiding\r\n\r\nbehavior, diversity, and collective action. This course is designed for all\r\n\r\nstudents interested in getting a deeper exposure to economics than is\r\n\r\navailable at the 100 level, and economics majors preparing to take more\r\n\r\nadvanced classes in economics. Prerequisite(s): ECO 156 or ECO 157\r\n\r\nCredit(s): 3 (3,0)'),
('ECO250', 'Quantitative Analysis for Economics\r\n\r\nThis course introduces students to the basic mathematical techniques and\r\n\r\nforms of analysis used in economics. General and applied methods of\r\n\r\neconomic and mathematical analysis are presented with applications\r\n\r\nincluding: functions, equations in economics, optimization and constrained\r\n\r\noptimization partial differentiation, and matrix algebra in economics.\r\n\r\nPrerequisite(s): ECO 156 and 157 and (MTH 117 or 129) Credits: 3 (3,0)'),
('ECO255', 'Money and Banking\r\n\r\nA description of American central banking, the structure and development of\r\n\r\ncommercial banks and non-bank financial intermediaries, the nation\'s money\r\n\r\nand capital markets, bank regulation and supervision, monetary theory and\r\n\r\nits policy implications, and the operation of the system in international\r\n\r\npayments. Prerequisite(s): ECO 156 Credits: 3 (3,0)'),
('ECO259', 'Contemporary Economic Issues and\r\n\r\nProblems\r\n\r\nExplores and analyzes the problems and issues of inflation, unemployment,\r\n\r\nand the necessity of urban renewal, the growth of corporate conglomerates,\r\n\r\nand the social and political ramifications in the world\'s money markets,\r\n\r\ntogether with the reasons giving rise to these occurrences. Prerequisite(s):\r\n\r\nECO 156 Credits: 3 (3,0)'),
('ECO260', 'Intermediate Microeconomics\r\n\r\nThis course provides students with a critical examination and introduction to\r\n\r\nthe analysis of markets, demand theory, production, theory of the firm,\r\n\r\nmarket structure, general equilibrium and welfare analysis, and introductory\r\n\r\ngame theory. The course introduces students to introductory modeling and\r\n\r\nmathematical methods used in microeconomics to model and estimate\r\n\r\ndemand relationships, production functions, market behavior, and risk and\r\n\r\nuncertainty. Prerequisite(s): ECO 157 and (MTH 117 or 129) Credits: 3 (3,0)'),
('ECO262', 'Managerial Economics\r\n\r\nThis course introduces students to the use of economic methods for\r\n\r\nmanagerial decision-making. The focus of the course is on the practical\r\n\r\napplication of economic techniques to business problems, including: the\r\n\r\ntheory of the firm, demand estimation, production functions, cost estimation,\r\n\r\nmarket structure, pricing strategy, and game theory. Note: Students\r\n\r\ncompleting this course may not receive credit for ECO 260 Prerequisite(s):\r\n\r\nECO 157 and (MTH 117 or 129) Credits: 3 (3,0)'),
('ECO270', 'Intermediate Macroeconomics\r\n\r\nStudy of aggregate economic analysis. With attention to the determination of\r\n\r\nthe level of income, employment, and inflation (IS-LM); Fiscal and monetary\r\n\r\nstabilization policies critically examines both theories, and the policies\r\n\r\nassociate with them; the macroeconomic implications of fixed and flexible\r\n\r\nexchange rates in the presence of international capital mobility supply-sided\r\n\r\neconomics. Prerequisite(s): ECO 156 and (MTH 117 or MTH 129) Credits:\r\n\r\n3 (3,0)'),
('ECO303', 'Arts and Entertainment Economics\r\n\r\nAn analysis and in-depth study of the economics and economic impact of the\r\n\r\narts and entertainment activities. Topics include arts demand and supply, live\r\n\r\nperforming and cultural arts, profit and non-profit entertainment industries,\r\n\r\nmusic and film industry (recorded arts) arts venues, museums, and\r\n\r\nperforming arts centers and economic models of nonprofit cultural\r\n\r\norganizations. Prerequisite(s): ECO 156 and 157 Credits: 3 (3,0)'),
('ECO304', 'Sports Economics\r\n\r\nAn analysis and in-depth study of the economics and economic impact of\r\n\r\nprofessional and amateur sports. Topics include team and league structures,\r\n\r\nlabor relations, stadium financing, consumer demand for sports, and the role\r\n\r\nand impact of public and private subsidies. The student should be able to:\r\n\r\nidentify and explain the economic principles and problems associated with\r\n\r\nsports team ownership, stadium economics, as well as the impact and\r\n\r\neffects of radio and television broadcast rights on sports economics.\r\n\r\nPrerequisite(s): ECO 156 or 157 Credits: 3 (3,0)'),
('ECO310', 'Health Economics and Policy\r\n\r\nThe aim of this course is to introduce students to the application of economic\r\n\r\nthinking to the analysis of health policy and health systems. Specifically, we\r\n\r\nwill survey the organization, financing and delivery of health services, the\r\n\r\neconomic evaluation of alternative methods of providing health care, priority\r\n\r\nsetting and resource allocation and the health behaviors of individuals.\r\n\r\nPrerequisite(s): ECO 156 and 157 Credits: 3 (3,0)'),
('ECO321', 'Engineering Economics\r\n\r\nThis course will provide students with a basic understanding of the economic\r\n\r\naspects of engineering in terms of the evaluation of engineering proposals\r\n\r\nwith respect to their worth and cost. Topics include: introduction to\r\n\r\nEngineering Economics; interest and interest formulas; equivalence and\r\n\r\nequivalence calculations; evaluation of replacement alternatives and\r\n\r\noperational activities; basic fundamentals of cost accounting. Prerequisite(s):\r\n\r\nAdmission to a Tech Program or approval of this Department chair. Credits:\r\n\r\n3 (3,0)'),
('ECO320', 'Internet and Network Economics\r\n\r\nA study of the economic structure and growth of the modern economy\r\n\r\nfocusing on the effect and impact of emerging technologies on industry,\r\n\r\nemployment, financial markets and market structure. Prerequisite(s): ECO\r\n\r\n156 or ECO 157 Credits: 3 (3,0)'),
('ECO330', 'Modern Economic Thought\r\n\r\nThe purpose of this course is to study the most important economic theories\r\n\r\nof the recent past in order to gain a better understanding, not only of these\r\n\r\nearlier economic theories, but also of the nature of economic theory in\r\n\r\ngeneral and of the strengths and weaknesses of modern micro and macro-\r\neconomics and policymaking. We will study the major schools of Modern\r\n\r\nEconomic Thought -Neo-Classical, Austrian, Keynesian, Monetarist, etc. We\r\n\r\nwill examine these theories to trace the long term thought on economic\r\n\r\nproblems like value theory, money and inflation, free trade, macro-\r\neconomics stability, etc. Prerequisite(s): ECO 156 or ECO 157 Credits:\r\n\r\n3 (3,0)'),
('ECO340', 'International Trade\r\n\r\nFirst of a two semester offering to provide a comprehensive exposition of the\r\n\r\ntheory and principles of international trade, the importance of international\r\n\r\ntrade in interdependent economics, and a knowledge of international trade\r\n\r\ninstitutions and how they relate to U.S. commercial policy. The material will\r\n\r\nemploy an analytical as well as historical and institutional approach.\r\n\r\nPrerequisite(s): ECO 156 or ECO 157 Credits: 3 (3,0)'),
('ECO341', 'International Finance\r\n\r\nSecond half of a two semester offering to provide theoretical and practical\r\n\r\nknowledge of international finance, its relationships to financial markets, and\r\n\r\nthe international monetary system as it relates to the U.S. economy. The\r\n\r\ncourse work will focus on balance of payments, foreign exchange markets\r\n\r\nand the international monetary system. Prerequisite(s): ECO 156 or ECO\r\n\r\n157 Credits: 3 (3,0)'),
('ECO342', 'Financial Economics\r\n\r\nThis course introduces students to the basic mathematical models,\r\n\r\ntechniques and forms of analysis used in financial economic analysis. Topics\r\n\r\ncovered include uncertainty and financial decision-making, mean-variance\r\n\r\nmodel of portfolio selection, Black-Scholes option pricing formula, utility\r\n\r\nfunctions, computational techniques and stochastic volatility. Prerequisite(s):\r\n\r\nECO 156 or ECO 157 Credits: 3 (3,0)'),
('ECO350', 'Economics of Global Disasters\r\n\r\nThis course focuses on the inter-relationship between natural and manmade\r\n\r\nhazards and disasters and the economy. Disasters within the economic and\r\n\r\nsociology literature arise when an event impacts the physical, social and\r\n\r\neconomic infrastructure beyond its normal absorptive capacity. Topics\r\n\r\ncovered and examined include natural hazards and their effects on regional\r\n\r\ndevelopment, manmade disasters, methods of hazard analysis, impact\r\n\r\nestimation techniques, and disaster planning and mitigation, public policy\r\n\r\nand issues. Prerequisite(s): ECO 156 or ECO 157 Credits: 3 (3,0)'),
('ECO358', 'Economics of Labor\r\n\r\nEconomics of Labor explores how individuals enhance their economic well-\r\nbeing through their work behavior and examines the role of labor markets in\r\n\r\nexplaining disparities of wealth. Topics include the static labor market and its\r\n\r\ninternal structure, the composition of the labor force, the nature of a job\r\n\r\nsearch, the life cycle human capital model, determination and classification\r\n\r\nof wages and wage structure, the American labor movement and the role of\r\n\r\nlabor unions. Prerequisite(s): ECO 156 or ECO 157 Credits: 3 (3,0)'),
('ECO360', 'Introduction to Experimental Economics\r\n\r\nThis course will introduce students to the intersection of two research\r\n\r\nprograms: behavioral economics and analytic game theory. Students will\r\n\r\nleave this class able to make predictions using game theory and will\r\n\r\nunderstand how bounded rationality affects those predictions.\r\n\r\nPrerequisite(s): ECO 156 or 157 Credits: 3 (3,0)'),
('ECO380', 'Econometrics\r\n\r\nThe course will focus on application of statistics and mathematics to\r\n\r\nproblems of formulating and estimating models of economic behavior. Topics\r\n\r\nto be covered: Fundamentals of probability and statistics used in economics\r\n\r\nand applied science. Introduction to central limit theorem and Gauss Markov\r\n\r\ntheorem; Univariate and Multivariate regression using Ordinary Least Square\r\n\r\n(OLS); Finite and large- sample properties of the classical regression\r\n\r\nmodels; Dummy variables and varying parameter models; specification\r\n\r\nanalysis. Prerequisite(s): MTH 110 and 117 or (MTH 129 and ECO 156 or\r\n\r\nECO 157) Credits: 3 (3,0)'),
('ECO390', 'Special Topics in Economics\r\n\r\nThis course enables students to explore a range of diverse topical and\r\n\r\ncurrent issues in economics and will require extensive readings, analysis,\r\n\r\nand written work. Students should consult with the department prior to\r\n\r\nregistering for this course. Prerequisite(s): ECO 156 or ECO 157 Credits:\r\n\r\n3 (3,0)'),
('ECO401', 'Industrial Organization\r\n\r\nThis course teaches how to bring industrial organization theory to data and\r\n\r\nvice-versa. We will cover strategic models of firm competition and selected\r\n\r\ntrade policy issues. We will use an explicit game-theoretic approach and\r\n\r\nstudy simplified versions of theoretical models from industrial organization\r\n\r\nand international trade. The theoretical material will be illustrated with case\r\n\r\nstudies and examples. The focus will be on different topics including\r\n\r\nmonopoly and competition, cartels and collusion, entry and market structure,\r\n\r\nprice discrimination, information and competition technological change and\r\n\r\ncompetition, and empirical analysis of auctions and organizations.\r\n\r\nPrerequisite(s): ECO 260 or ECO 262 and (ECO 270 or ECO 255) Credits:\r\n\r\n3 (3,0)'),
('ECO410', 'Public Finance/Sector Economic\r\n\r\nThis course introduces students to the issues, interactions and inter-\r\nrelationships arising between the market and government policy-making.\r\n\r\nTopics covered include: tools of public finance, budget analysis, externalities,\r\n\r\npolitical economy, cost-benefit analysis, taxation and policy, social\r\n\r\ninsurance, income distribution and welfare. Prerequisite(s): ECO 260 or 262\r\n\r\nand (ECO 255 or 370) Credits: 3 (3,0)'),
('ECO412', 'Cost-Benefit Analysis\r\n\r\nThis course will focus on the principles of applied economic and welfare\r\n\r\nanalysis. The basic theory of cost-benefit analysis is presented and its\r\n\r\nrelevance for social policy analysis is established. Applications of cost-\r\nbenefit analysis are examined in the light of management decision making,\r\n\r\ntheoretical grounding in finance, accounting, marketing, investment and\r\n\r\nplanning. Its application in health care industry, non-profit sector,\r\n\r\nentertainment sector, transportation sector and information technology sector\r\n\r\nalso examined. Prerequisite(s): ECO 260 or 262 and (ECO 255 or 370)\r\n\r\nCredits: 3 (3,0)');
INSERT INTO `course` (`Course_ID`, `Course_Description`) VALUES
('EET105', 'Introduction to Digital Electronics\r\n\r\nAn introduction to the fundamental concepts of Digital Electronics. Topics\r\n\r\ncovered: Number systems, Boolean Algebra, Logic Gates, Combinational\r\n\r\nCircuits, Karnaugh Map Minimization Techniques, Adders, Signed Numbers,\r\n\r\nMultiplexers, Code-Converters, Decoders, Encoders, Comparators and 7-\r\n\r\nsegment displays. The laboratory component of the course reinforces the\r\n\r\ntopics covered in the theory through relevant experiments performed by\r\n\r\nstudents using logic trainers. Corequisite(s): EET 111 or EET 104 Credits:\r\n\r\n2'),
('EET104', 'DC/AC Circuits\r\n\r\nAn introductory course to the fundamentals and basic principles of DC and\r\n\r\nAC circuits. Topics covered include: The definition of current, voltage and\r\n\r\npassive circuit elements such as, resistors, capacitors, and inductors,\r\n\r\nthrough their I-V characteristic relationships. Ohm\'s Law Power, Kirchoff\'s\r\n\r\nCurrent and Voltage Laws, Voltage and Current Divider Rules, and their\r\n\r\nbasic applications in the analysis of series, parallel and series-parallel\r\n\r\ncircuits. The fundamental Network Theorems, Superposition, Thevenin\'s and\r\n\r\nNorton\'s equivalent circuits and Maximum Power Transfer. AS signal\r\n\r\nwaveforms and their Average and RMS value, alternating current, voltage\r\n\r\nand power resistors, capacitors and inductors in AC circuits, ideal\r\n\r\ntransformers and the concept of resonance. Introduction to the operation and\r\n\r\nbasic applications of first order passive, low and high pass, RC filters.\r\n\r\nCorequisite(s): MTH 129 Credits: 4 (3,2)'),
('EET110', 'Computer Applications\r\n\r\nAn introduction to computer programming with applications. Examples and\r\n\r\nassignments are drawn from problems in Electrical and Computer\r\n\r\nEngineering Technology. The course uses Windows based PCs, the \"C/C++\"\r\n\r\nprogramming language (visual C++), and IEEE-488 Standard interfacing to\r\n\r\nprogrammable instrumentation. Prerequisite(s): EET 111 Credits: 2'),
('EET111', 'Electric Circuits I\r\n\r\nA basic course in direct current circuit theory. Concepts of charge, current\r\n\r\nand voltage; Ohm\'s Law, Kirchoff\'s Laws; analysis of series, parallel, and\r\n\r\ncombination circuits; mesh and nodal analysis; Superposition, Thevenin\'s\r\n\r\nand Norton\'s theorems; maximum power transfer theorem; electric fields and\r\n\r\ncapacitance; magnetic fields and inductance; analysis of R-C and R-L\r\n\r\nswitching networks. The laboratory is coordinated with, and supports, the\r\n\r\ntheory course. Corequisite(s): MTH 129 Credits: 4'),
('EET113', 'Electric Circuits II\r\n\r\nThis is the second of a two-course sequence designed to provide the\r\n\r\nbackground needed to analyze electric networks. Topics covered in this\r\n\r\ncourse include sinusoidal waveforms and non-sinusoidal waveforms; the\r\n\r\nphasor representation of sinusoidal signals; the use of complex numbers to\r\n\r\nanalyze R-C, R-L, and R-L-C networks under sinusoidal steady-state\r\n\r\nconditions; series and parallel resonance; average power calculations;\r\n\r\nsimple passive filters, frequency response (dB magnitude and phase) and its\r\n\r\nrelations to the step response of simple R-C, R-L and R-L-C networks;\r\n\r\ntransformer principles and types of transformers; three phase balance\r\n\r\nsystems. Prerequisite(s): EET 111 and MTH 129 Credits: 4'),
('EET118', 'Semiconductor Devices and Circuits\r\n\r\nFundamentals of semiconductor diodes and bipolar junction transistors are\r\n\r\ndiscussed in this course. Topics covered include: Q point operating\r\n\r\nconditions of semiconductor diodes in various circuit configurations, full and\r\n\r\nhalf-wave rectification, capacitor input filters, zener diodes and basic linear\r\n\r\nDC power supply configurations. Q point operating conditions of BJT\r\n\r\ntransistors in various bias configurations are analyzed as well as small signal\r\n\r\nsingle-stage and multi-stage amplifiers at mid-band frequencies in terms of\r\n\r\nvoltage gain, current gain, power gain, input impedance, output impedance,\r\n\r\nAC load lines and signal node voltages. Corequisite(s): EET 113 Credits:\r\n\r\n4'),
('EET191', 'Electric Circuits Concepts and\r\n\r\nComponents\r\n\r\nAn introductory lecture/demonstration course in the terminology, concepts,\r\n\r\nand components of electric circuits. The aim is to give students from other\r\n\r\ndisciplines (e.g. Office Management, Nursing, etc.) sufficient knowledge and\r\n\r\nunderstanding to effectively communicate with technical specialists in this\r\n\r\nfield. Prerequisite(s): Sequential (Integrated) Math 1 Credits: 4'),
('EET200', 'Electronic Devices & Circuits\r\n\r\nPrinciples and characteristics of semiconductor devices and linear integrated\r\n\r\ncircuits are discussed. Devices studied include: semiconductor diodes, zener\r\n\r\ndiodes, bipolar junction transistors, photodiodes and transistors, field- effect\r\n\r\nand metal oxide semiconductor transistors, thryristors , and operational\r\n\r\namplifiers in various DC power supply, small signal and power amplifier\r\n\r\nconfigurations as well as wave shaping circuits. Simulation software will be\r\n\r\nused throughout the course in both theory and laboratory exercises.\r\n\r\nPrerequisite(s): EET 104 Credits: 4'),
('EET223', 'Digital Electronics\r\n\r\nAnalysis and design of combinational and sequential logic circuits. SSI and\r\n\r\nMSI circuits; flip-flops, counters, and shift registers; integrated circuit\r\n\r\nfamilies; multiplexers; semiconductor memory devices; D/A and A/D\r\n\r\nconverters. The associated laboratory reinforces the topics covered in the\r\n\r\ntheory through relevant experiments performed by the student. A formal\r\n\r\nreport is part of the laboratory requirement. Prerequisite(s): EET 105, EET\r\n\r\n118 Credits: 4'),
('EET224', 'Amplifiers\r\n\r\nSignal parameters of Class A and Class B power amplifiers as well as\r\n\r\noperational amplifiers are studied in this course. Topics covered include,\r\n\r\nefficiency, dB, dBm, heat sinks, JFET and MOSFET transistors, operational\r\n\r\namplifiers, and the frequency response of amplifier circuits. In addition,\r\n\r\noperational amplifier characteristics and models are used in the analysis of\r\n\r\nopen loop and closed loop amplifiers. Adders, subtractors, active filters,\r\n\r\ncomparators, differentiators, integrators, and the Schmitt trigger are also\r\n\r\nstudied. Feedback concepts and the effect of feedback on gain, impedance\r\n\r\nand frequency response of amplifiers are studied as well as circuit stability,\r\n\r\ngain, and phase margins. Simulation software is used in the analysis of\r\n\r\noperating conditions and frequency response of amplifiers. Formal Report\r\n\r\nwriting is part of the Laboratory requirement. Prerequisite(s): EET 118\r\n\r\nCorequisite(s): EET 110, MTH 130 Credits: 4'),
('EET225', 'Communications Electronics\r\n\r\nAn introduction to communication signals and circuits. Topics include: filters,\r\n\r\nsimple audio and RF oscillators, interpretation and application of Fourier\r\n\r\nseries; mathematics of amplitude; frequency and phase modulation; basic\r\n\r\ntransmitter circuitry; superheterodyne receivers for various modulation\r\n\r\nmethods; multiplexing techniques including FM stereo multiplexing.\r\n\r\nIntroduction to Digital Transmission Techniques as time permits.\r\n\r\nPrerequisite(s): EET 224 Credits: 4'),
('EET251', 'Microprocessors\r\n\r\nFundamental microprocessor and microcontroller concepts; architecture,\r\n\r\nmemory, memory interfacing, programming, signals, timing, delay\r\n\r\ncalculations, I/O interfacing and interrupts. The students will be required to\r\n\r\ninterface input and output devices to the embedded controller and quantify\r\n\r\nassociated hardware/software trade-offs. Laboratory work requires\r\n\r\nprogramming in assembly language and in C/C++. Prerequisite(s): EET 223\r\n\r\nCredits: 3'),
('EET311', 'Network Analysis\r\n\r\nA calculus based network analysis course that introduces the use of Laplace\r\n\r\ntransforms in the analysis of both active and passive lumped parameter time-\r\ninvariant linear networks. Topics covered include Mesh and Nodal analysis\r\n\r\nusing matrix formulations; the network theorems; impedance and the\r\n\r\nmodeling of initial conditions; first and second order systems; transfer\r\n\r\nfunctions; poles and zeros; impulse and step response; forced and natural\r\n\r\nresponse as well as system stability and time domain response. The\r\n\r\nsinusoidal steady state (AC) phasor transformation and its relation to the\r\n\r\nLaplace transform and the frequency response of networks are also\r\n\r\nincluded. The laboratory utilizes simulation of electric networks.\r\n\r\nCorequisite(s): MTH 236 Credits: 4'),
('EET316', 'Digital Design\r\n\r\nIntroduction to Digital Design using FPGA (Field Programmable Gate Arrays)\r\n\r\nand VHDL (Hardware Description Languages). The FPGA circuits are\r\n\r\ndesigned using Schematic Capture as well as VHDL. The target chips are\r\n\r\nXilinx FPGAs and Xilinx tools are used to simulate and to \"place and route\"\r\n\r\nthe design. Designs are then tested using FPGA based platforms.\r\n\r\nPrerequisite(s): EET 223 Credits: 4'),
('EET317', 'Industrial Electronics\r\n\r\nSelected topics involving Difference and Instrumentation amplifiers with\r\n\r\nTransducer Bridge applications. Linear and Switching mode regulated power\r\n\r\nsupply operation with analysis and design techniques using existing\r\n\r\nindustrial ICs Thyristor characteristics with SCR, DIAC and TRIAC\r\n\r\napplications in power control circuits. Theory concepts are illustrated in the\r\n\r\nlaboratory. Formal report writing is part of the laboratory requirement.\r\n\r\nPrerequisite(s): EET 224 Credits: 4'),
('EET327', 'Signal Processing\r\n\r\nThe course will provide the students with an introduction to continuous-time\r\n\r\nand discrete-time signals and systems. Topics to be covered include: Linear\r\n\r\nTime-Invariant (LTI) systems, Laplace transforms, transfer function, impulse\r\n\r\nand step response, transient and steady state responses, frequency\r\n\r\nresponse, Bode plots, passive and active filters, modulation, oscillators.\r\n\r\nFourier series and Fourier transforms, power spectral density and Parseval’s\r\n\r\ntheorem. Random signals and noise. Signal-to-noise ratio. Discrete-time\r\n\r\nsignals. Sampling, filtering, convolution, Discrete Fourier Transform (DFT),\r\n\r\nFast Fourier Transform (FFT) algorithms, and the z-transform. The use of\r\n\r\nMATLAB is integrated throughout the course in laboratory exercises,\r\n\r\ndemonstrations and student projects. Prerequisite(s): EET 311 Credits:\r\n\r\n4'),
('EET414', 'Transmission Lines and Antennas\r\n\r\nIntroduction to transmission lines. Transient response for conditions of\r\n\r\nmatched and mismatched impedance. Definition of reflection and\r\n\r\ntransmission coefficients. Sinusoidal signals, standing wave ratio and use of\r\n\r\nthe Smith chart. Power measurement. Introduction to antennas. Radiation\r\n\r\npattern and impedance of simple dipole antennas. Formal laboratory report\r\n\r\nwriting required. Prerequisite(s): EET 225 Credits: 4'),
('EET418', 'Microprocessor Interfacing and Control\r\n\r\nThis course covers an in-depth study of microprocessor systems by\r\n\r\nexploring the internal functions of a computer. Hardware and software\r\n\r\ncapabilities are studied in order to build a foundation for the design and\r\n\r\ninterfacing of microprocessor based systems using real world examples.\r\n\r\nAssembly as well as a high level language such as \"C++\" is used in various\r\n\r\nprogramming projects and in interfacing devices. Prerequisite(s): EET 110\r\n\r\nand EET 251 Credits: 4'),
('EET420', 'Linear Systems and Controls\r\n\r\nThis course covers the principles and characteristics of continuous time\r\n\r\ninvariant linear systems and controls as well as the basic performance\r\n\r\nparameters and analysis techniques of such systems. Topics include:\r\n\r\nReview of Laplace Transforms and their applications in analyzing the\r\n\r\nperformance of systems in terms of their impulse and step response; block\r\n\r\ndiagram models, signal flow graphs, and state variable representation of\r\n\r\nsystems; second order active filters and the performance characteristics of\r\n\r\nsecond order systems in terms of overshoot, speed and setting time.\r\n\r\nFeedback Control System characteristics, the Routh-Hurwitz stability criteria,\r\n\r\nand the application of Root Locus and Frequency Response techniques in\r\n\r\nthe analysis of control systems are also covered. The laboratory utilizes\r\n\r\nMATLAB to demonstrate and enhance the theory principles covered in the\r\n\r\nlecture portion of the course. Prerequisite(s): EET 311 Corequisit'),
('EET426', 'Digital Communications\r\n\r\nAn introduction to digital communications systems. Topics covered include;\r\n\r\nthe sampling theorem; PCM systems; synchronization techniques; noise\r\n\r\nanalysis and reduction; FSK; PSK; bit error rates; hamming codes; and an\r\n\r\nintroduction to fiber optic systems. Prerequisite(s): EET 225 Credits: 3'),
('EET428', 'Advanced Microprocessors Theory\r\n\r\nThis course covers various hardware applications of a special purpose\r\n\r\nmicroprocessor systems and peripheral devices such as floating point\r\n\r\nprocessors and interrupt controllers. Practical approaches of interfacing the\r\n\r\nmicroprocessor with different systems are explored. Laboratory assignments\r\n\r\nmake use of assembly level as well as a high level programming language.\r\n\r\nPrerequisite(s): EET 418 Credits: 4'),
('EET441', 'Advanced Networking\r\n\r\nThis course is a continuation of EET 440, Networking and Data\r\n\r\nCommunications. The principles of Architecture Layering, Multiplexing and\r\n\r\nEncapsulation are discussed. TCP/IP, IPX, PPP, ISDN and Frame Relay\r\n\r\nProtocols are covered. Network equipment such as repeaters, bridges router\r\n\r\nhubs and switches are studied in detail. Equipment examples are drawn from\r\n\r\nkey vendors such as CISCO, 3COM and Cabletron. The laboratory portion of\r\n\r\nthe course will concentrate on experiments and projects designed using\r\n\r\nCISCO Systems networking equipment, such as 2500 and 2600 series\r\n\r\nrouters, 1900 and 2900 catalysts switches. The students will also learn how\r\n\r\nto design networks using VLANS on the above mentioned equipment.\r\n\r\nPrerequisite(s): EET 440 Credits: 4'),
('EET450', 'Design Concepts\r\n\r\nGeneral design considerations and concepts with particular emphasis in\r\n\r\n\"worst case\" design and \"optimum\" design. Case studies will be provided\r\n\r\nthrough examples of different areas of Electrical Engineering Technology.\r\n\r\nProduct development procedures and processes will be presented along with\r\n\r\ntesting and costing considerations. By the end of this course students must\r\n\r\nselect their senior design project for EET 452W and must submit an\r\n\r\nappropriate proposal. Prerequisite(s): Completion of junior level EET courses\r\n\r\nor Department permission. Credits: 2'),
('EET452', 'Design Project (Writing Intensive)\r\n\r\nThe student\'s overall technical knowledge is applied to this \"capstone\"\r\n\r\ndesign project under the supervision of faculty. A complete oral and written\r\n\r\npresentation is required of each student explaining the design process and\r\n\r\nspecifications, cost considerations, testing and/or computer simulation\r\n\r\nresults when appropriate. Note: Students will be expected to write short\r\n\r\nexercises, as well as longer papers that will be revised and graded. This is a\r\n\r\nwriting-intensive course. Note: EET 452W can be used to fulfill the writing\r\n\r\nintensive requirement. Prerequisite(s): EET 450 and EGL 101 with a grade of\r\n\r\nC or higher Credits: 2'),
('EET490', 'Selected Topics in Electrical Engineering\r\n\r\nTechnology\r\n\r\nCourses that range from 490-499 are selected topics of current interest in\r\n\r\nComputer and/or Electrical Engineering Technology. Prerequisite(s):\r\n\r\nContingent upon selected topic Credits: 3'),
('EET491', 'Selected Topics in Electrical Engineering\r\n\r\nTechnology\r\n\r\nCourses that range from 490-499 are selected topics of current interest in\r\n\r\nComputer and/or Electrical Engineering Technology. Prerequisite(s):\r\n\r\nContingent upon selected topic Credits: 3'),
('EET492', 'Selected Topics in Electrical Engineering\r\n\r\nTechnology\r\n\r\nCourses that range from 490-499 are selected topics of current interest in\r\n\r\nComputer and/or Electrical Engineering Technology. Prerequisite(s):\r\n\r\nContingent upon selected topic Credits: 3'),
('EET493', 'Selected Topics in Electrical Engineering\r\n\r\nTechnology\r\n\r\nCourses that range from 490-499 are selected topics of current interest in\r\n\r\nComputer and/or Electrical Engineering Technology. Prerequisite(s):\r\n\r\nContingent upon selected topic Credits: 3'),
('MTH015', 'Elements of Algebra\r\n\r\nThis course fulfills the elementary algebra requirement for entrance into many programs at the\r\n\r\nCollege. Topics include numeric and algebraic operations, solutions of linear equations and\r\n\r\ninequalities, graphs and equations of lines, systems of linear equations, polynomial operations,\r\n\r\nfactoring, and solution of quadratic equations. 4 ncu (non-credit units). The minimum passing\r\n\r\ngrade is C-. Grade will not be computed into GPA.'),
('MTH102', 'Elementary Discrete Mathematical Models\r\n\r\nAn introduction to Discrete Mathematical Models that utilize topics including Matrix Algebra,\r\n\r\nLinear Programming, the Simplex Method, the Method of Least Squares, Markov Chains,\r\n\r\nGame Theory and Exponential Growth. Models include the Leontief Input-Output Model, the\r\n\r\nTransportation Problem, Finance Investment Strategies, Management Decisions and\r\n\r\nCampaign Strategies. The course makes use of computer software such as the spreadsheet\r\n\r\nsoftware EXCEL and the TI-86 graphing calculator or equivalent. A graphing calculator is\r\n\r\nrequired. Prerequisite(s): MP2 or MTH 015 Credits: 3'),
('MTH103', 'Sets, Probability and Logic\r\n\r\nThis course uses set theory to develop the basic concepts of finite probability. The student is\r\n\r\nintroduced to the tree and to the counting methods of devising sample spaces. The probability\r\n\r\nof mutually exclusive events, dependent and independent events are treated. Some\r\n\r\napplications to probability distributions of discrete variables are included. Finally, the basic\r\n\r\ntopics in symbolic logic are covered. Prerequisite(s): MP2 or MTH 015 Credits: 3'),
('MTH107', 'Introduction to Mathematical Ideas\r\n\r\nA survey of contemporary topics in mathematics designed to develop an appreciation of the\r\n\r\npower and significance of mathematics and its uses in modeling the world around us. Topics\r\n\r\nmay include the mathematics of social choice, growth and symmetry, mathematical systems,\r\n\r\nEuclidean and non-Euclidean geometries, management science. Prerequisite(s): MP2 or MTH\r\n\r\n015 Credits: 3'),
('MTH110', 'Statistics\r\n\r\nBasic concepts of probability and statistical inference. Included are the binominal, normal, and\r\n\r\nchi-square distributions. Practical applications are examined. Computer assignments using\r\n\r\nMinitab form an integral part of the course. Prerequisite(s): MP2 or MTH 015 Credits: 3'),
('MTH116', 'College Algebra\r\n\r\nThis course is designed to provide students with a firm foundation in symbolic manipulation\r\n\r\nand algebraic reasoning. Both manipulative skills and conceptual understanding of algebraic\r\n\r\nprinciples are stressed. Topics include equivalent expressions and equations, linear functions,\r\n\r\nproperties of exponents and logarithms, quadratic equations, power functions, exponential\r\n\r\nfunctions. Upon completion of this course students will be prepared for precalculus as well as\r\n\r\nfor quantitative courses in the natural and social sciences. Prerequisite(s): MP2 or MTH 015\r\n\r\nCredits: 4'),
('MTH117', 'Precalculus Modeling for the Life and Social Sciences\r\n\r\nMTH 117 is a precalculus course for students who are not majoring in the technologies. This\r\n\r\ncourse uses linear, exponential logarithmic, power, polynomial, and trigonometric functions to\r\n\r\nmodel real world problems. The important characteristics and properties of these functions are\r\n\r\ninvestigated. The emphasis is on applications and problem solving. A graphing calculator is\r\n\r\nrequired. Note: Students completing this course may not receive credit for MTH 129.\r\n\r\nPrerequisite(s): MP3 or MTH 116 Credits: 4'),
('MTH129', 'Precalculus with Applications\r\n\r\nThis is a precalculus course with applications from various disciplines including technology,\r\n\r\nscience, and business. Topics include families of functions, mechanics of functions,\r\n\r\nexponential and logarithmic functions, trigonometric functions and complex numbers. The\r\n\r\nemphasis is on applications and problem solving. A graphing calculator is required. Note:\r\n\r\nStudents completing this course may not receive credit for MTH 117. Prerequisite(s): MP3 or\r\n\r\nMTH 116 Credits: 4'),
('MTH130', 'Calculus I with Applications\r\n\r\nThis is a calculus course for those not majoring in Mathematics, Engineering Science or\r\n\r\nComputer Science. Topics include the derivative, differentiation of algebraic, trigonometric,\r\n\r\nexponential and logarithmic functions, applications of the derivative and the definite integral.\r\n\r\nApplications are taken from technology, science, and business. Problem solving is stressed. A\r\n\r\ngraphing calculator is required. Note: Students completing this course will not receive credit for\r\n\r\nMTH 150. Prerequisite(s): MP4 or MTH 117 or 129 Credits: 4'),
('MTH150', 'Calculus I\r\n\r\nThis is the first course of the calculus sequence. Topics include, differentiation of functions of\r\n\r\none variable, introduction to integration, application of differentiation and integration. A\r\n\r\ngraphing calculator is required. Note: Students completing this course may not receive credit\r\n\r\nfor MTH 130. Prerequisite(s): MP4 or MTH 117 or 129 Credits: 4'),
('MTH151', 'Calculus II\r\n\r\nA continuation of the calculus of one variable. Topics include, differentiation and integration of\r\n\r\nthe transcendental functions, integration techniques, polar coordinates and infinite series.\r\n\r\nPrerequisite(s): MTH 130 or MTH 150 Credits: 4'),
('MTH236', 'Calculus II with Applications\r\n\r\nA continuation of Calculus I with Applications. Topics include techniques of integration,\r\n\r\napplications of the definite integral, multivariable calculus, and an introduction to Differential\r\n\r\nEquations. Applications are taken from technology, science and business. Problem solving is\r\n\r\nemphasized. A graphing calculator is required. Prerequisite(s): MTH 130 or MTH 150 Credits:\r\n\r\n3'),
('MTH245', 'Linear Algebra\r\n\r\nA study of the basic properties of vectors and vector spaces; linear transformations and\r\n\r\nmatrices; matrix representations of transformations; characteristic values and characteristic\r\n\r\nvectors of linear transformations; similarity of matrices, selected applications. Prerequisite(s):\r\n\r\nMTH 151 or MTH 236 Credits: 3'),
('MTH246', 'Introduction to Financial Mathematics\r\n\r\nThis is a course designed to introduce concepts in financial markets; present and future value\r\n\r\ncalculations of money related to loans, annuities, and bonds. It also introduces simple but\r\n\r\nbasic no-arbitrage derivations of the prices of the most financial contracts that are traded either\r\n\r\non exchanges or over-the-counter (stocks, options and forward contracts) in a single and multi-\r\nperiod asset pricing setting. Students will analyze the valuation and hedging of European and\r\n\r\nAmerican options and general contingent claims in the framework of the classical binomial\r\n\r\nmodel of the stock price. Prerequisite(s): MTH 151 or MTH 236 Credits: 3'),
('MTH250', 'Graph Theory and Combinatorics\r\n\r\nAn introductory to graph theory and combinatorial analysis. The emphasis is on problem\r\n\r\nsolving and applications with some attention to theorems and proofs. Topics include Graph\r\n\r\nModels, Isomorphism, Planar Graphs, Circuits and Graph coloring, Trees, Minimal Spanning\r\n\r\nTrees, Arrangements and selections, Generating Functions and Inclusion/Exclusion.\r\n\r\nPrerequisite(s): MTH 150 Corequisite(s): MTH 245 Credits: 3'),
('MTH252', 'Calculus III\r\n\r\nThis is the third course of the calculus sequence. It generalizes single variable calculus to\r\n\r\nmultivariable calculus. Functions of several variables are described numerically, graphically\r\n\r\nand algebraically. Topics include: partial differentiation, multiple integration, vectors and vector\r\n\r\nfields and line integrals. Prerequisite(s): MTH 151 Credits: 4'),
('MTH253', 'Differential Equations\r\n\r\nThis is an introductory course in ordinary Differential Equations designed to develop an\r\n\r\nunderstanding of the qualitative behavior of solutions and its relation to the process being\r\n\r\nmodeled. Use of appropriate computer packages forms an integral part of the course. Topics\r\n\r\ninclude: first order differential equations and systems, linear systems, applications including\r\n\r\nelectrical circuits and vibrations, introduction to Laplace Transform. Prerequisite(s): MTH 252\r\n\r\nCredits: 4'),
('MTH270', 'Introduction to Mathematical Computing\r\n\r\nThis course is an introduction to computational, experimental, and algorithmic methods using a\r\n\r\ncomputer algebra system. Course topics include computational algebra, functional\r\n\r\nprogramming, simulation, and visualization. Numerical calculus, analysis of mathematical\r\n\r\nmodels and dynamics, basic linear algebra, and other mathematical problem-solving methods\r\n\r\nwill be discussed. At the completion of the course, students will be familiar with a computer\r\n\r\nalgebra system and how to solve mathematical problems by computational methods.\r\n\r\nPrerequisite(s): MTH 151 with a grade of C or higher or permission of the Mathetmatics\r\n\r\nDepartment Credits: 3'),
('MTH290', 'Methods of Proof in Advanced Mathematics\r\n\r\nMTH 290 is intended to be a bridge course from lower-division mathematics courses to upper-\r\ndivision mathematics. Topics include Logic and Proofs, Set Theory, Relations, Functions\r\n\r\n(Onto, One-to-One, Sequences as Functions), Cardinality, Introduction to Algebraic Structures,\r\n\r\nand Introduction to Concepts of Analysis. The focus will be on writing clear and precise proofs.\r\n\r\nPrerequisite(s): MTH 151 Credits: 3'),
('MTH322', 'Advanced Mathematical Analysis\r\n\r\nTopics include: infinite series, first and second order differential equations and applications,\r\n\r\nhomogeneous and forced response, Laplace transforms, Taylor series, matrices, Gauss-\r\nElimination method. Prerequisite(s): MTH 236 Credits: 3'),
('MTH320', 'Geometric Structures\r\n\r\nAn axiomatic view of Euclidean and non-Euclidian geometry. The standard models of the\r\n\r\nvarious geometries will be constructed. Careful emphasis on proof construction and\r\n\r\nunderstanding. Applications of Euclidean and Hyperbolic geometries will be given.\r\n\r\nPrerequisite(s): MTH 151 or MTH 236 Credits: 3'),
('MTH325', 'Mathematical Modeling in the Biological Sciences\r\n\r\nThe course will focus on mathematical models in biology, including topics such as the growth\r\n\r\nof populations, the interactions between different populations, the spread of epidemics, the\r\n\r\nHardy-Weinberg law in genetics and drug levels in the bloodstream. The emphasis will be on\r\n\r\ndetermining the mathematical component of a phenomenon, creating an appropriate\r\n\r\nmathematical model, using the model to answer questions about the situation, and interpreting\r\n\r\nthe effectiveness of the model. Technology will be used as an exploratory tool. Prerequisite(s):\r\n\r\nOne semester of biology and MTH 151 or MTH 236 Credits: 4'),
('MTH326', 'Mathematical Modeling in Applied Sciences\r\n\r\nThis course will investigate various mathematical models in the applied sciences taken from\r\n\r\nreal life phenomena. Basic notions of abstraction and how to work on real problems at different\r\n\r\nlevels will be introduced in the course. The Models are explored using analytical,\r\n\r\ncomputational and graphical tools as appropriate. Models cover but are not limited to examples\r\n\r\nfrom Finance, Economics, Ecology, the Environment, Engineering, Biology and Behavioral\r\n\r\nSciences. Prerequisite(s): MTH 151 or MTH 236 Credits: 3'),
('MTH330', 'Applied Abstract Algebra\r\n\r\nEssential structures of modern algebra: sets, relations, groups, homomorphisms, and rings will\r\n\r\nbe studied with a view toward their applicability. Applications may include error correcting\r\n\r\ncodes, computational complexity, and counting problems. Prerequisite(s): MTH 245 and MTH\r\n\r\n290 Credits: 3'),
('MTH331', 'Introduction to Topology\r\n\r\nThis course introduces the basic concepts and some fundamental results of Point Set\r\n\r\nTopology. Some of the topics covered are: Open sets and the notion of continuity on various\r\n\r\nfundamental spaces (the real line, Euclidean spaces, metric spaces, and general topological\r\n\r\nspaces); connectedness, compactness, countability, and separation; the Tychonoff theorem.\r\n\r\nPrerequisite(s): MTH 252 and MTH 290 Credits: 3'),
('MTH346', 'Continuous Time Finance\r\n\r\nThis course introduces Brownian motion, Stochastic Calculus, Ito\'s integral and Ito\'s formula\r\n\r\nwhich are used to derive the Black-Scholes formula in a continuous-time model rather than a\r\n\r\nlimit of discrete-time models as covered in MTH 246. Pricing derivatives on financial securities\r\n\r\nusing Black-Scholes formula will be covered. Prerequisite(s): MTH 246 Credits: 3'),
('MTH354', 'Principles of Real Analysis\r\n\r\nStudents will be introduced to the foundations of real analysis through a rigorous development\r\n\r\nof the real number system. This will be followed by a study of limits, continuity, and\r\n\r\ndifferentiability of real functions. The Riemann integral and the Fundamental Theorem of\r\n\r\nCalculus will be developed rigorously. Sequences and series of real functions will also be\r\n\r\ndiscussed. Prerequisite(s): MTH 252 and MTH 290 Credits: 3'),
('MTH355', 'Principles of Complex Analysis\r\n\r\nThis course will concentrate on the algebraic and analytic properties of complex numbers and\r\n\r\nfunctions of a single complex variables. The concepts of limits, continuity and differentiability\r\n\r\nwill be extended to the complex domain. Line integrals and Cauchy\'s Integral Theorem will be\r\n\r\npresented. The expansion of analytic functions in Taylor and Laurent series will be derived and\r\n\r\nresidue theory will be introduced. Prerequisite(s): MTH 252 and MTH 290 Credits: 3'),
('MTH356', 'Integrated Topics in Math and Physics\r\n\r\nThis is an integrated math-physics course with applications to topics in physics and the\r\n\r\nengineering technologies. It is meant to be interdisciplinary in nature and directed toward\r\n\r\nstudents in the Bachelor of Technology and Applied Mathematics programs. Topics to be\r\n\r\ncovered include: Vector Algebra, Vector Calculus, Scalar and Vector Field Theory, Fourier\r\n\r\nSeries, Fourier Integral, Fourier Transforms and Laplace Transforms. The focus will be on\r\n\r\napplication and integration of mathematics methods to physics and engineering technologies.\r\n\r\nNote: Students completing this course may not receive credit for PHY 356. Prerequisite(s):\r\n\r\nMTH 236 or MTH 252 and PHY 136 or PHY 144 Credits: 3'),
('MTH360', 'Applied Probability and Statistics\r\n\r\nA calculus-based course which studies applications of probability and statistical inference. Use\r\n\r\nof appropriate computer packages forms an integral part of the course. Topics are chosen from\r\n\r\nstatistical parameters, continuous and discrete random variables, probability distributions,\r\n\r\ncorrelation and regression analysis, design of experiments and ANOVA. Prerequisite(s): MTH\r\n\r\n151 or MTH 236 Credits: 3'),
('MTH365', 'Vector Calculus\r\n\r\nThe course begins with a detailed development of vector algebra in two- and three-\r\ndimensions. Also covered will be differentiation and integration of scalar and vector valued\r\n\r\nfunctions of vectors. Vector fields will be discussed with particular attention to line and surface\r\n\r\nintegrals. Important vector theorems such as Green\'s, Stokes\' and the divergence theorem and\r\n\r\ntheir important applications will be presented. A discussion of the Fourier series and the\r\n\r\nFourier integral will complete the course. Prerequisite(s): MTH 245 and MTH 252 Credits:\r\n\r\n3'),
('MTH385', 'Applied Partial Differential Equations\r\n\r\nThis course is an introduction to partial differential equations. Topics include introduction to\r\n\r\nheat, wave, and Laplace equations, Fourier series, numerical methods, applications. Use of an\r\n\r\nappropriate computer packages is an integral part of the course. Prerequisite(s): MTH 253\r\n\r\nCredits: 3'),
('MTH390', 'Methods in Operations Research\r\n\r\nThis course is intended to focus on understanding, formulating and solving deterministic\r\n\r\nmodels in operations research. Maximum and Minimum Linear Programming problems will be\r\n\r\nstudied graphically and theoretically. The Simplex Method, Sensitivity Analysis and Duality will\r\n\r\nbe covered and an in-depth analysis of the reasoning on which these topics are based will be\r\n\r\ngiven. Instruction in computer software techniques will be presented to solve Linear\r\n\r\nProgramming problems, using the simplex method and sensitivity analysis. Transportation\r\n\r\nProblems, Integer Programming, or Markov Chains will be covered. In order to enhance\r\n\r\nquantitative reasoning, the course emphasizes the formulation of mathematical models\r\n\r\ncommonly used by operation research analysts, as well as the theoretical and computer\r\n\r\nsoftware solutions to these models. Prerequisite(s): MTH 130 or MTH 150 Credits: 3'),
('MTH400', 'Problem Solving Seminar\r\n\r\nThis is a seminar course where students will work on a variety of non-routine problems chosen\r\n\r\nby the instructor and present their solutions (or partial solutions). Students will also work on a\r\n\r\nmajor research project under the guidance of the instructor and will report their results.\r\n\r\nCooperative work will be encouraged and much of the work will be of an \"open ended\" nature.\r\n\r\nCommunications skills will be stressed. Prerequisite(s): MTH 252 or MTH 245 or MTH 250 or\r\n\r\nMTH 253 Credits: 3'),
('MTH405', 'Seminar in Applied Mathematics\r\n\r\nThis is a capstone course for Applied Mathematics students. Students will work on a major\r\n\r\nproject taken from business, industry or government agency. Students will have to present\r\n\r\ntheir results both orally and in writing. The completed report must meet a standard that is\r\n\r\nacceptable to the business community. Students may work in teams or individually. They will\r\n\r\nreport on their progress as part of the seminar. This course may be taken twice for academic\r\n\r\ncredit. Prerequisite(s): MTH 354 Credits: 3'),
('MTH422', 'Numerical Methods\r\n\r\nThis is an introductory elective course for Applied Mathematics students. Topics include\r\n\r\nsolutions of nonlinear equations, interpolation and approximation of functions, numerical\r\n\r\ndifferentiation and integration, iterative techniques in Linear Algebra and others. Solutions of\r\n\r\nproblems using computer will be an integral part of this course. Prerequisite(s): MTH 151 and\r\n\r\nMTH 245 Credits: 3'),
('MTH445', 'Linear Algebra II\r\n\r\nThis course is a continuation of MTH245. Topics include further study of eigenvalues and\r\n\r\neigenvectors; inner product spaces, orthogonality, least squares problems, symmetric\r\n\r\nmatrices, diagonalization, quadratic forms and the singular value decomposition. Applications\r\n\r\nto Markov chains, constrained optimization, differential equations, statistics, and image\r\n\r\nprocessing, among others, will be shown. Prerequisite(s): MTH 245 Credits: 3'),
('MTH460', 'Applied Probability and Statistics II\r\n\r\nA continuation of MTH 360. Topics chosen from hypothesis testing; sampling distributions;\r\n\r\nanalysis of variance and covariance; nonparametric techniques; probability distributions;\r\n\r\nmultivariate techniques. Prerequisite(s): MTH 360 Credits: 3'),
('MTH490', 'Topics in Applied Mathematics\r\n\r\nLectures in applied mathematics that may introduce topics not covered in the Applied\r\n\r\nMathematics curriculum or may expand upon the content of existing courses. These topics\r\n\r\nvary from year to year, and the specific description of the content of each course will be\r\n\r\npublicized in advance by the department. Examples of such topics are computational linear\r\n\r\nalgebra, applied optimization, dynamical modeling, financial mathematics, etc. Prerequisite(s):\r\n\r\nMTH 245 and MTH 252 Credits: 3');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Invoice_ID` int(11) NOT NULL,
  `Appointment_Date` varchar(8) NOT NULL,
  `Appointment_Begin` char(4) NOT NULL,
  `Appointment_End` char(4) NOT NULL,
  `Total` char(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Invoice_ID`, `Appointment_Date`, `Appointment_Begin`, `Appointment_End`, `Total`) VALUES
(84, '042817', '0030', '0130', '34'),
(81, '040617', '0000', '0030', '45'),
(87, '043017', '0000', '0030', '22'),
(95, '051217', '0000', '0100', '25'),
(94, '051017', '0700', '0800', '34'),
(107, '051917', '0800', '0830', '25'),
(109, '051617', '0600', '0630', '89'),
(112, '051617', '0300', '0400', '36');

-- --------------------------------------------------------

--
-- Table structure for table `profile_picture`
--

CREATE TABLE `profile_picture` (
  `Email` varchar(100) NOT NULL,
  `URL` text NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_picture`
--

INSERT INTO `profile_picture` (`Email`, `URL`, `Name`) VALUES
('cimicp@farmingdale.edu', 'uploaded/cimicp@farmingdale.png', 'l0GBR1Z.jpg'),
('qqqqqqw@farmingdale.edu', 'uploaded/qqqqqqw@farmingdale.png', '1636 - Pokemon Fire Red (U)(Squirrels).st1.png'),
('stephen@farmingdale.edu', 'uploaded/stephen@farmingdale.png', 'IMG_20170507_121239.jpg'),
('tef', 'uploaded/te.png', 'IMG_20170507_121239.jpg'),
('test2@gmail.com', 'uploaded/test2@gmail.png', 'IMG_20170507_121239.jpg'),
('test3@gmail.com', 'uploaded/test3@gmail.png', '1805 - Final Fantasy I & II - Dawn of Souls (U)(In'),
('test@gmail.com', 'uploaded/test@gmail.png', 'IMG_20170208_103821.jpg'),
('testStudent', 'uploaded/testStu.png', 'l0GBR1Z.jpg'),
('testTutor', 'uploaded/testT.png', '_v1_images_42_sabine_84947aed.png'),
('tutorte@farmingdale.edu', 'uploaded/tutorte@farmingdale.png', '1636 - Pokemon Fire Red (U)(Squirrels).st1.png');

-- --------------------------------------------------------

--
-- Table structure for table `requested_appointment`
--

CREATE TABLE `requested_appointment` (
  `Student_Appointment_ID` int(11) NOT NULL,
  `Course_ID` char(7) NOT NULL,
  `Ram_ID` varchar(9) NOT NULL,
  `Appointment_Date` varchar(8) NOT NULL,
  `Appointment_Begin` char(4) NOT NULL,
  `Appointment_End` char(4) NOT NULL,
  `Building` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requested_appointment`
--

INSERT INTO `requested_appointment` (`Student_Appointment_ID`, `Course_ID`, `Ram_ID`, `Appointment_Date`, `Appointment_Begin`, `Appointment_End`, `Building`) VALUES
(110, 'BCS101', 'R12345678', '052317', '0200', '0230', 'Alumni Hall'),
(34, 'BCS360', 'R12345678', '040617', '0500', '0530', 'Campus Center'),
(54, 'EGL112', 'R12233489', '047617', '0400', '0500', 'Campus Center'),
(52, 'BCS360', 'R12233489', '040617', '0000', '0030', 'Campus Center'),
(44, 'BCS360', 'R12345678', '040617', '0700', '0800', 'Campus Center'),
(55, 'BCS360', 'R44556790', '040617', '0000', '0030', 'Campus Center'),
(64, 'BCS360', 'R12345678', '051017', '0700', '0800', 'Campus Center'),
(62, 'BCS360', 'R12345678', '042817', '0030', '0130', 'Campus Center'),
(63, 'BCS360', 'R12345678', '043017', '0000', '0030', 'Campus Center'),
(80, 'BCS360', 'R12345678', '051717', '0130', '0200', 'Hale Hall'),
(112, 'BCS101', 'R12345678', '052517', '1500', '1530', 'Health and Wellness Center'),
(66, 'BCS360', 'R12345678', '051117', '0130', '0200', 'Greenley Library'),
(81, 'BCS360', 'R12345678', '051817', '0600', '0700', 'Orchard Hall'),
(100, 'BCS101', 'R12345678', '051617', '0600', '0630', 'Alumni Hall'),
(103, 'ECO380', 'R12345678', '080617', '0130', '0200', 'Knapp Hall'),
(104, 'ECO380', 'R12345678', '102917', '0300', '0400', 'Greenley Library'),
(83, 'PSY101', 'R01111111', '051617', '0100', '0130', 'Hale Hall'),
(84, 'BCS360', 'R01111111', '051617', '0130', '0230', 'Dewey Hall'),
(85, 'BCS360', 'R01111111', '052517', '0000', '0030', 'Alumni Hall'),
(86, 'BCS360', 'R01111111', '051917', '0800', '0830', 'Alumni Hall'),
(106, 'BCS101', 'R12345678', '051617', '0300', '0400', 'Dewey Hall'),
(107, 'BCS101', 'R12345678', '052517', '0000', '0030', 'Alumni Hall'),
(108, 'BCS101', 'R12345678', '052517', '0000', '0100', 'Alumni Hall'),
(111, 'BCS101', 'R12345644', '052517', '0000', '0030', 'Alumni Hall');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Appointment_ID` int(11) NOT NULL,
  `Review` varchar(1000) DEFAULT NULL,
  `Rating` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Appointment_ID`, `Review`, `Rating`) VALUES
(81, 'Alright tutoring session.  Covered the material OK but was not a nice guy.', '3.5'),
(84, 'Good Tutor, helped a bunch.', '4.0'),
(87, 'great tutor, helped with the subject matter', '5.0'),
(109, 'drhffuhdfjgejgghgggtytghgff', '4.0');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Ram_ID` varchar(9) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Student_Email` char(23) NOT NULL,
  `Student_Phone_Number` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Ram_ID`, `First_Name`, `Last_Name`, `Student_Email`, `Student_Phone_Number`) VALUES
('R12345678', 'Christopher', 'Cimino', 'cimicp@farmingdale.edu', '1611111111'),
('R01234567', 'iyana', 'terrell', 'terri@farmingdal', '6315555555'),
('R00000001', 'some', 'student', 'astu@gmail.com', '6310000000'),
('R44556790', 'tom', 'smith', 'temp2@gmail.com', '1562589633'),
('R1234569,', 'kjlj', 'ljklj', 't34t', '8889999999'),
('R01531979', 'josiane', 'armand', 'jarmand@gmail.co', '6315555555'),
('R01111111', 'testj', 'testj', 'testj@gmail.com', '5555555555'),
('R12345648', 'joe', 'test', 'testtu@farmingdale.edu', '1236659968');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `Tutor_ID` int(11) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Tutor_Email` varchar(100) NOT NULL,
  `Tutor_Phone_Number` varchar(10) NOT NULL,
  `Thirty_Minute_Rate` int(2) NOT NULL,
  `Sixty_Minute_Rate` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`Tutor_ID`, `First_Name`, `Last_Name`, `Tutor_Email`, `Tutor_Phone_Number`, `Thirty_Minute_Rate`, `Sixty_Minute_Rate`) VALUES
(6, 'TutorTestTwo', 'TutorLastName', 'tutorte@farmingdale.edu', '1234567890', 12, 34),
(16, 'some', 'body', 'somebody@gmail.com', '1234567890', 50, 100),
(21, 'Leo', 'Wood', 'qbert@gmail.com', '1553226999', 12, 63),
(22, 'test333 ', 'testlast', 'temp@gmail.com', '6675801122', 45, 36),
(34, '$tevie', 'stevie', 'stephen@farmingdale.edu', '1578965487', 85, 362),
(33, 'TutorFirst', 'TutorLast', 'tutortu@farmingdale.edu', '8886649754', 89, 76),
(31, 'Iyana', 'Terrell', 'iyana@gmail.com', '6312456789', 25, 35),
(36, 'teeeeeeest', 'tesssstlname', 'qqqqqq@farmingdale.edu', '1226533453', 23, 63),
(38, 'Mike', 'Test', 'qqqqqqw@farmingdale.edu', '5641231236', 12, 25),
(39, 'chris', 'cimino', 'ttopoit@farmingdale.edu', '1526325890', 36, 63);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_availability`
--

CREATE TABLE `tutor_availability` (
  `Tutor_Appointment_ID` int(11) NOT NULL,
  `Tutor_ID` int(11) NOT NULL,
  `Course_ID` char(7) NOT NULL,
  `Appointment_Date` varchar(8) NOT NULL,
  `Appointment_Begin` char(4) NOT NULL,
  `Appointment_End` char(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_availability`
--

INSERT INTO `tutor_availability` (`Tutor_Appointment_ID`, `Tutor_ID`, `Course_ID`, `Appointment_Date`, `Appointment_Begin`, `Appointment_End`) VALUES
(19, 7, 'BCS360', '040617', '0000', '0030'),
(5, 6, 'EGL112', '040617', '0400', '0500'),
(25, 20, 'BCS360', '040617', '0000', '0030'),
(11, 6, 'BCS360', '040617', '0000', '0030'),
(16, 16, 'BCS360', '04232017', '0500', '0600'),
(26, 22, 'BCS360', '040617', '0000', '0030'),
(30, 6, 'BCS360', '041817', '0100', '2017'),
(31, 6, 'BCS360', '042517', '0000', '2017'),
(46, 20, 'BCS360', '043017', '0000', '0030'),
(44, 6, 'BCS360', '042817', '0030', '0130'),
(45, 6, 'BCS360', '043017', '0000', '0030'),
(47, 6, 'BCS360', '051017', '0700', '0800'),
(48, 6, 'BCS360', '050917', '0000', '0030'),
(58, 20, 'BCS360', '051517', '0000', '0100'),
(57, 20, 'BCS360', '051417', '0000', '0030'),
(66, 20, 'BCS360', '051417', '0100', '0200'),
(67, 20, 'BCS360', '051417', '0030', '0100'),
(69, 6, 'BCS101', '052417', '4:00', '4:30'),
(70, 31, 'BCS360', '051917', '0800', '0830'),
(71, 33, 'BCS101', '052417', '0300', '0400'),
(75, 33, 'BCS101', '051617', '0600', '0630'),
(73, 33, 'BCS101', '052417', '0000', '0030'),
(74, 33, 'BCS101', '052417', '0030', '0100'),
(76, 34, 'ECO380', '080617', '0130', '0200'),
(77, 34, 'BCS101', '051617', '0300', '0400'),
(78, 20, 'BCS101', '052417', '0000', '0030'),
(79, 20, 'BCS101', '052517', '0000', '0030'),
(81, 35, 'BCS101', '052517', '0000', '0030'),
(82, 36, 'BCS101', '053117', '0000', '0030'),
(83, 36, 'BCS101', '052517', '0000', '0030'),
(84, 37, 'BCS101', '052517', '0000', '0030');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `First_Name` varchar(100) DEFAULT NULL,
  `Last_Name` varchar(100) DEFAULT NULL,
  `Is_Tutor` varchar(1) DEFAULT NULL,
  `Phone_Number` char(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Email`, `Password`, `First_Name`, `Last_Name`, `Is_Tutor`, `Phone_Number`) VALUES
('cimicp@farmingdale.edu', '25d55ad283aa400af464c76d713c07ad', 'Christopher', 'Cimino', 'N', '1611111111'),
('testtu@farmingdale.edu', '81dc9bdb52d04dc20036dbd8313ed055', 'joe', 'test', 'N', '1236659968'),
('tutorte@farmingdale.edu', '81dc9bdb52d04dc20036dbd8313ed055', 'TutorTestTwo', 'TutorLastName', 'Y', '1234567890'),
('test1@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'test', 'test', 'N', '6315555555'),
('temp@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'test333 ', 'testlast', 'Y', '6675801122'),
('somedude@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'some', 'student', 'N', '6311111111'),
('somebody@gmail.com', 'password', 'some', 'body', 'Y', '1234567890'),
('qbert@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Leo', 'Wood', 'Y', '1553226999'),
('temp2@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'tom', 'smith', 'N', '1562589633'),
('stephen@farmingdale.edu', '9be7b469f1351d98d946cd1fec7d4230', '$tevie', 'stevie', 'Y', '1578965487'),
('tutortu@farmingdale.edu', '81dc9bdb52d04dc20036dbd8313ed055', 'TutorFirst', 'TutorLast', 'Y', '8886649754'),
('jarmand@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'josiane', 'armand', 'N', '6315555555'),
('testj@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'testj', 'testj', 'N', '5555555555'),
('iyana@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Iyana', 'Terrell', 'Y', '6312456789'),
('qqqqqq@farmingdale.edu', '81dc9bdb52d04dc20036dbd8313ed055', 'teeeeeeest', 'tesssstlname', 'Y', '1226533453'),
('qqqqqqw@farmingdale.edu', '81dc9bdb52d04dc20036dbd8313ed055', 'Mike', 'Test', 'Y', '5641231236'),
('ttopoit@farmingdale.edu', '81dc9bdb52d04dc20036dbd8313ed055', 'chris', 'cimino', 'Y', '1526325890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Ram_ID` (`Ram_ID`),
  ADD KEY `Tutor_ID` (`Tutor_ID`),
  ADD KEY `Appointment_Date` (`Appointment_Date`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Invoice_ID`);

--
-- Indexes for table `profile_picture`
--
ALTER TABLE `profile_picture`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `requested_appointment`
--
ALTER TABLE `requested_appointment`
  ADD PRIMARY KEY (`Student_Appointment_ID`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Ram_ID` (`Ram_ID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Appointment_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Ram_ID`),
  ADD KEY `user_student_fk` (`Student_Email`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`Tutor_ID`),
  ADD KEY `user_tutor_fk` (`Tutor_Email`);

--
-- Indexes for table `tutor_availability`
--
ALTER TABLE `tutor_availability`
  ADD PRIMARY KEY (`Tutor_Appointment_ID`),
  ADD KEY `Tutor_ID` (`Tutor_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `requested_appointment`
--
ALTER TABLE `requested_appointment`
  MODIFY `Student_Appointment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `Appointment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `Tutor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tutor_availability`
--
ALTER TABLE `tutor_availability`
  MODIFY `Tutor_Appointment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
