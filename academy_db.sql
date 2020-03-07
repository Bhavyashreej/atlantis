-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2019 at 12:24 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academyapp_enquiryform`
--

CREATE TABLE `academyapp_enquiryform` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `parent_name` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `admission` varchar(255) NOT NULL,
  `email` varchar(900) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `academyapp_jobapplicationform`
--

CREATE TABLE `academyapp_jobapplicationform` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `description` longtext,
  `resume` varchar(100) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `job_title_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academyapp_jobapplicationform`
--

INSERT INTO `academyapp_jobapplicationform` (`id`, `first_name`, `last_name`, `email`, `phone`, `description`, `resume`, `created_on`, `job_title_id`) VALUES
(1, 'bala', 'h', 'gowthami575@gmail.com', '78998975656', 'jhgj jghjghj', '/uploaded_files/r_0002019-12-10.png', '2019-12-10 04:11:48.449835', 1),
(2, 'gowthami', 'jh', 'hhgh@gmail.com', '887687686868', 'kjhkjh', '/uploaded_files/r_0002019-12-11.jpg', '2019-12-11 10:46:08.858489', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academyapp_jobopening`
--

CREATE TABLE `academyapp_jobopening` (
  `id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `slug` varchar(900) DEFAULT NULL,
  `qualification` varchar(255) NOT NULL,
  `job_description` longtext,
  `job_duties` longtext,
  `desired_profile` longtext,
  `experience_qualification` longtext,
  `salary_range` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `no_of_position` int(11) NOT NULL,
  `meta_description` longtext,
  `keywords` longtext,
  `published_on` datetime(6) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academyapp_jobopening`
--

INSERT INTO `academyapp_jobopening` (`id`, `job_title`, `slug`, `qualification`, `job_description`, `job_duties`, `desired_profile`, `experience_qualification`, `salary_range`, `location`, `no_of_position`, `meta_description`, `keywords`, `published_on`, `created_on`, `modified_on`, `created_by_id`) VALUES
(1, 'English Teacher', 'English_Teacher', 'BED', 'Responsible to source, negotiate and purchase materials from vendors\r\nEvaluate vendor’s quotation to ensure that they are in line with the technical and commercial specifications required for the project\r\nAdvise internal and external on issues regarding purchasing Terms & Conditions\r\nIn charge of daily operational purchasing needs such as planning, issuing and following up on Purchase Orders delivery and shipment schedules\r\nResolve supply, quality, service and invoicing issues with vendors\r\nAssist in ISO Annual Performance Review for vendors\r\nEvaluate supplier performance based on quality standards, delivery time & best prices and ensure all the criteria are met according to the organizational requirements and expectation\r\nResponsible for implementing internal procurement strategies to cater to high delivery and short lead time requirements', 'Responsible to source, negotiate and purchase materials from vendors\r\nEvaluate vendor’s quotation to ensure that they are in line with the technical and commercial specifications required for the project', 'Advise internal and external on issues regarding purchasing Terms & Conditions\r\nIn charge of daily operational purchasing needs such as planning, issuing and following up on Purchase Orders delivery and shipment schedules', '1-4 Years', '5,000.00 to 10,000.00 per month', 'Kannamangala, Whitefield', 2, '', '', '2019-12-09 05:23:29.000000', '2019-12-16 12:14:58.030276', '2019-12-16 12:14:58.030285', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academyapp_lastestnew`
--

CREATE TABLE `academyapp_lastestnew` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(900) DEFAULT NULL,
  `content` longtext NOT NULL,
  `meta_description` longtext,
  `keywords` longtext,
  `published_on` datetime(6) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academyapp_lastestnew`
--

INSERT INTO `academyapp_lastestnew` (`id`, `title`, `slug`, `content`, `meta_description`, `keywords`, `published_on`, `created_on`, `modified_on`, `created_by_id`) VALUES
(1, 'Science', 'science', '<p>Cras vitae turpis lacinia, lacinia la cus non, fermentum nisi.</p>', 'Cras vitae turpis lacinia, lacinia la cus non, fermentum nisi.', 'Cras vitae turpis lacinia, lacinia la cus non, fermentum nisi.', '2019-12-06 10:16:31.000000', '2019-12-06 10:24:54.212034', '2019-12-06 10:24:54.212049', 1),
(2, 'English', 'english', '<p>Lacinia, lacinia la cus non, fermen tum nisi.</p>', 'Lacinia, lacinia la cus non, fermen tum nisi.', 'Lacinia, lacinia la cus non, fermen tum nisi.', '2019-12-06 10:18:37.000000', '2019-12-16 11:38:13.601934', '2019-12-16 11:38:13.601945', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academyapp_pages`
--

CREATE TABLE `academyapp_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(900) DEFAULT NULL,
  `content` longtext NOT NULL,
  `meta_description` longtext,
  `keywords` longtext,
  `punlished_on` datetime(6) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academyapp_pages`
--

INSERT INTO `academyapp_pages` (`id`, `title`, `slug`, `content`, `meta_description`, `keywords`, `punlished_on`, `created_on`, `modified_on`, `created_by_id`) VALUES
(1, 'About Us', 'about-us', '<section class=\"about-us-area mt-50 section-padding-100-0\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"section-heading text-center mx-auto wow fadeInUp\" data-wow-delay=\"300ms\">\r\n<h3>Welcome to&nbsp;Atlantis the World School</h3>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid no-padding\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-12 col-xs-12 col-md-6  wow fadeInUp \" data-wow-delay=\"400ms\"><img class=\"img-width-height-content\" src=\"../../../../../static/img/bg-img/About_US.jpg\" alt=\"\" /></div>\r\n<div class=\"col-sm-12 col-xs-12 col-md-6 wow fadeInUp content_justify\" data-wow-delay=\"500ms\">\r\n<p>Atlantis-the World School, founded by Komamdur Educational Society is set to herald cosmopolitan education in the spiritual capital Tirupathi. It is an institution that imparts globally informed education and places premium of 21st century skill development. The school marks a departure from the traditional K-12 schooling with its practice of modern pedagogy reinforced with the reliance on technology for methodical enhancement of learning outcomes.</p>\r\n<p>The infrastructure of the school is designed to sustain a dynamic educational ecosystem and is at par with the best schools of the country. The school adheres to scientific pedagogy and collaborative instruction and the faculty bases the instruction on individualized attention. In keeping with the spirit of the times, educational technology is set to play a pivotal role in the classroom instruction and is expected to enhance engagement of the students and their receptiveness towards the lessons.</p>\r\n<p>Development of social skills and nurturing of the value system , skill-development, acquisition of technological aptitude and other 21<sup>st</sup> century skills are kept on equal footing with the academics.</p>\r\n<p>Atlantis-The World School is a K-12 co-educational school. We offer the national CBSE curriculum and will be affiliated to Central Board of Secondary Education (CBSE).</p>\r\n</div>\r\n<!--<div class=\"col-sm-12 col-xs-12 col-md-12 wow fadeInUp content_justify\" data-wow-delay=\"600ms\">\r\n\r\n</div>--></div>\r\n</div>\r\n</section>\r\n<div class=\"container-fluid  no-padding col-md-12 col-sm-12 col-xs-12 row no_padding wow fadeInUp \" style=\"margin-top: 5%; margin-bottom: 5%;\" data-wow-delay=\"500ms\">\r\n<div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n<div class=\"col-md-12 col-sm-12 col-xs-12\">\r\n<div class=\"viso_all\" style=\"color: #19ab94;\">\r\n<h3><strong>Vision</strong></h3>\r\n</div>\r\n<p class=\"about_vis\">&ldquo;To be the leading education hub recognized nationally for delivering exceptional programs in a globally informed setting with an enduring sense of community.&rdquo;</p>\r\n<div class=\"viso_all wow fadeInUp \" style=\"color: #aac06e;\" data-wow-delay=\"500ms\">\r\n<h3><strong>Mission</strong></h3>\r\n</div>\r\n<p class=\"about_vis\">&ldquo;To encourage creative intellect and diverse interests, promote critical thinking for productive and principled engagement in the 21st century world.&rdquo;</p>\r\n</div>\r\n</div>\r\n<div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n<div class=\"viso_all wow fadeInUp \" style=\"color: #f4ac3e;\" data-wow-delay=\"500ms\">\r\n<h3><strong>Philosopy</strong></h3>\r\n</div>\r\n<p class=\"about_phil\">&ldquo;To instill in students&rsquo; academic rigor intellectual curiosity and the ability to learn independently and impart knowledge skills and attitude to succeed in a complex fast changing multicultural society&rdquo;.</p>\r\n<p class=\"about_phil\">&ldquo;To inspire a sense of personal values based on compassion, integrity and sound judgment along with Spiritual, moral, cultural and aesthetic awareness which contributes to a balanced and well-informed approach to life in the 21st century&rdquo;</p>\r\n</div>\r\n</div>', 'The school intends to herald an era of international education in the region and broadening the dimensions of school education by integrating it with skill and personality development. The global bent of education will pioneer a shift in the society and economy of the region by providing the youth all possible advantages that a good education can offer.', 'K-12 school, global school, best schools , international school, schools in tirupathi, cbse schools in tirupathi', '2019-12-06 11:07:00.000000', '2019-12-24 06:38:44.524081', '2019-12-24 06:38:44.524090', NULL),
(2, 'Academics', 'academics', '<section class=\"about-us-area mt-50 section-padding-100\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"section-heading text-center mx-auto wow fadeInUp\" data-wow-delay=\"300ms\">\r\n<h3>Academics &ndash; Engendering World - Class Pedagogical Practices</h3>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid padding-md-right  col-md-12 col-sm-12 col-xs-12  row wow fadeInUp content_justify\" data-wow-delay=\"400ms\">\r\n<p>Atlantis practices dynamically designed teaching learning styles consistent with the theory of multiple intelligences while ensuring the simultaneity of cognitive and physical development through the co-curriculum complemented with targeted exposure.</p>\r\n<p>The curriculum is focused as well as diverse. It is devised keeping in view the modern pedagogical principles and skill-development requirements. The academics and the co-curricular are not seen as competing but as complementary to each other. The principles of the cognitive sciences are incorporated in the development of the classroom instruction plan and educational technology is aptly deployed to assist the curricular implementation.</p>\r\n<p>The classroom instruction is highly interactive and individual attention is paid to define the individual set of intelligences that each child possesses. The curriculum is designed factoring in the tenets of the Theory of Multiple Intelligences and lesson plans are designed accordingly.</p>\r\n</div>\r\n<div class=\"col-md-12 col-sm-12 col-xs-12 padding-md-right  row wow fadeInUp content_justify\" data-wow-delay=\"500ms\">\r\n<div class=\"col-md-8 col-sm-8 col-xs-12\" style=\"padding-left: 0px;\">\r\n<p>Assessment of the progress is seamlessly integrated into the overall curricular goals and evaluations are multi-faceted and highly systemized. The basis of instructions is formed by the twin principles of inclusiveness and competitiveness.</p>\r\n<p>The school subscribes to syllabus prescribed by the CBSE with the most recent additions including AI. Foreign language is also offered as an elective to the students. Information and Computer Technology forms an integral segment of the curriculum at the Atlantis and e-learning is well-integrated.</p>\r\n<h3 style=\"font-weight: 500; font-size: 20px;\">Faculty</h3>\r\n<p>The faculty is invariably orientated to the holistic and unhindered development of the child. The mentoring is not confined to the classroom but goes beyond via effective communication and individualized attention. Teachers are trained in the tenets of Theory of Multiple Intelligences and are set to be instrumental in assisting the children in making their career choices.</p>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12 no_padding\"><img src=\"../../../../../static/img/bg-img/academics.jpg\" /></div>\r\n</div>\r\n</section>', 'The curriculum is focused as well as diverse. It is devised keeping in view the modern pedagogical principles and skill-development requirements. The academics and the co-curricular are not seen as competing but as complementary to each other.', 'k-12 school, best education in tirupathi, school curriculum', '2019-12-21 10:35:40.000000', '2019-12-21 10:35:44.481789', '2019-12-21 10:35:44.481799', NULL),
(3, 'Infrastructure', 'infrastructure', '<section class=\"about-us-area mt-50 section-padding-100-0\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"section-heading text-center mx-auto wow fadeInUp\" data-wow-delay=\"300ms\">\r\n<h3>Facilities &mdash; Articulating The World - Class Campus</h3>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid no-padding content_justify padding-md-right\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-11 col-xs-11 col-md-11   wow fadeInUp \" data-wow-delay=\"400ms\">\r\n<p>The educational ecosystem of Atlantis is supported by an infrastructure that is composed of carefully planned and efficiently designed learning spaces. The entire structure is planned in a way so as to infuse a sense of belongingness in students.</p>\r\n<p>With an optimally stocked library, Science, math and language labs, smart classrooms, and extensive sports facilities, the stage is set for the learning for a lifetime.</p>\r\n</div>\r\n<div class=\"&quot;col-sm-1\">&nbsp;</div>\r\n<div class=\"col-md-11 col-sm-11 col-xs-11  wow fadeInUp \" data-wow-delay=\"500ms\">\r\n<p>Premium has been placed on sports and physical activities and the campus houses a swimming pool, skating rink, and basketball and volleyball courts besides football, cricket fields and race tracks. The indoor play area matches the versatility of the out-door playfields as it includes the inventory includes table tennis, chess, carom, foosball, besides various other indoor games to suit different interests.</p>\r\n<p>&nbsp;</p>\r\n<table class=\" wow fadeInUp \" style=\"border: 1px solid #000; border-collapse: collapse;\" data-wow-delay=\"600ms\">\r\n<thead style=\"background-color: #69bc5f !important; color: #fff; border-bottom: 1px solid #000;\">\r\n<tr>\r\n<th class=\"school_activity\">Academics</th>\r\n<th class=\"school_activity\">Outdoor Sports</th>\r\n<th class=\"school_activity\">Indoor Sports</th>\r\n<th class=\"school_activity\">Others</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Physics Lab</td>\r\n<td>Volley Ball &amp; Throwball</td>\r\n<td>Table Tennis</td>\r\n<td>Airconditioned buses</td>\r\n</tr>\r\n<tr>\r\n<td>Chemistry Lab</td>\r\n<td>Mini-football</td>\r\n<td>Air Hockey</td>\r\n<td>GPS bus tracking</td>\r\n</tr>\r\n<tr>\r\n<td>Biology Lab</td>\r\n<td>Basket ball</td>\r\n<td>Foosball</td>\r\n<td>CCTV Surveillance</td>\r\n</tr>\r\n<tr>\r\n<td>Maths Lab</td>\r\n<td>200 meter athletic track</td>\r\n<td>Carroms</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>English and foreign Language Labs</td>\r\n<td>Cricket</td>\r\n<td>Chess</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Library</td>\r\n<td>Skating</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Computer Lab</td>\r\n<td>Swimming</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class=\"&quot;col-sm-1\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</section>', 'With an optimally stocked library, Science, math and language labs, smart classrooms, and extensive sports facilities, the stage is set for the learning for a lifetime.', 'k-12 school facilities, school with best facilities, sports in schools', '2019-12-21 10:37:04.000000', '2019-12-21 10:37:36.523894', '2019-12-21 10:37:36.523903', NULL),
(4, 'Gallery', 'gallery', '<section class=\"about-us-area mt-50 section-padding-100\">\r\n<div class=\"container-fluid  container_pad\">\r\n<div class=\"row\">\r\n<div class=\"gallery-list d-flex justify-content-between flex-wrap row wow fadeInUp \" data-wow-delay=\"300ms\"><a class=\"gallery_slide gallery-img wow fadeInUp \" title=\"Gallery Image 1\" href=\"../../../../../static/img/bg-img/gallery1.jpg\" data-wow-delay=\"400ms\"> <img src=\"../../../../../static/img/bg-img/gallery1.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 2\" href=\"../../../../../static/img/bg-img/gallery2.jpg\" data-wow-delay=\"400ms\"><img src=\"../../../../../static/img/bg-img/gallery2.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 3\" href=\"../../../../../static/img/bg-img/gallery3.jpg\" data-wow-delay=\"400ms\"><img src=\"../../../../../static/img/bg-img/gallery3.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 4\" href=\"../../../../../static/img/bg-img/gallery4.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery4.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 5\" href=\"../../../../../static/img/bg-img/gallery5.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery5.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 6\" href=\"../../../../../static/img/bg-img/gallery6.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery6.jpg\" alt=\"\" /></a><a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 8\" href=\"../../../../../static/img/bg-img/gallery8.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery15.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 7\" href=\"../../../../../static/img/bg-img/gallery7.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery7.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 8\" href=\"../../../../../static/img/bg-img/gallery8.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery8.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 9\" href=\"../../../../../static/img/bg-img/gallery9.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery9.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 10\" href=\"../../../../../static/img/bg-img/gallery10.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery10.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 11\" href=\"../../../../../static/img/bg-img/gallery11.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery11.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 12\" href=\"../../../../../static/img/bg-img/gallery12.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery12.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 14\" href=\"../../../../../static/img/bg-img/gallery14.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery14.jpg\" alt=\"\" /></a> <a class=\"gallery-img gallery_slide wow fadeInUp \" title=\"Gallery Image 14\" href=\"../../../../../static/img/bg-img/gallery14.jpg\" data-wow-delay=\"500ms\"><img src=\"../../../../../static/img/bg-img/gallery14.jpg\" alt=\"\" /></a></div>\r\n<div class=\"gallery-list d-flex justify-content-between flex-wrap row wow fadeInUp \" data-wow-delay=\"300ms\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</section>', 'gallery', 'gallery', NULL, '2019-12-21 05:27:27.279357', '2019-12-21 05:27:27.279369', NULL),
(5, 'Admissions', 'admission', '<section class=\"about-us-area mt-50 section-padding-100-0\">\r\n<div class=\"container-fluid no-padding content_justify\">\r\n<div class=\"container-fluid padding-md-right  col-md-12 col-sm-12 col-xs-12  row wow fadeInUp content_justify\" data-wow-delay=\"400ms\">\r\n<p>Admission is granted based on the vacancies and it is not denied on the basis of caste, creed, sex, etc. Though it&rsquo;s not mandatory, it is recommended that the students take an informal test (takes about 30-60 min) on any day during office hours, as it serves as a tool to understand the prior knowledge of the student and inform the teachers &amp; parents accordingly. There are no Pass marks in the test and admission is neither granted nor denied based on the performance in that test. The test may be taken even after the admission process is completed.</p>\r\n</div>\r\n<div class=\"col-md-12 col-sm-12 col-xs-12 no-padding row wow fadeInUp \" data-wow-delay=\"400ms\">\r\n<div class=\"col-md-8 col-sm-8 col-xs-12\">\r\n<p style=\"margin-bottom: 15px;\"><strong>Age Criteria:</strong></p>\r\n<p style=\"margin-bottom: 15px;\"><em><strong>LKG</strong></em>: 3+ years as on Mar 1st</p>\r\n<p style=\"margin-bottom: 15px;\"><em><strong>UKG</strong></em>: 4+ years as on Mar 1st</p>\r\n<p style=\"margin-bottom: 15px;\"><em><strong>Class I &ndash; X</strong></em>: 5+ years as on Mar 1st i.e; if a student seeks admission into 5th class, he/she should be 5 + 4 = 9+ years as on Mar 1st of that academic year.</p>\r\n<p><strong>FEE</strong>: The below fee includes the tuition fee, language labs, science and computer labs, smart classes, library, exams, games &amp; sports including swimming, skating, yoga, fitness, field trips, etc co-curricular &amp; extra-curricular activities that are conducted during school timings. It may exclude the cost of&nbsp;specialized sports like horse riding, rifle shooting, costumes, makeup, external resources training fee (optional for interested students only).</p>\r\n<p>Click here for&nbsp;<em><a href=\"#\" target=\"_blank\" rel=\"noopener\"> Atlantis the World School Fee Structure &ndash; 2019-20</a></em></p>\r\n<p><strong>Books &amp; Uniform</strong>: Cost of Books &amp; Uniform is not included in the above fee. Though Books &amp; Uniform accessories shall be available in the school, it is not mandatory to purchase them at the school except for some academic material, School Diary, T-shirt, etc which may not be available outside. However, there shall be at least a 10% discount on most items available at the school counter.</p>\r\n</div>\r\n<div class=\"col-md-4 col-sm-4 col-xs-12 padding-md-right wow fadeInUp \" data-wow-delay=\"600ms\"><img src=\"../../../../../static/img/bg-img/admission.jpg\" /></div>\r\n<div class=\"col-md-12 col-sm-12 col-xs-12\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</section>', 'There are no Pass marks in the test and admission is neither granted nor denied based on the performance in that test. The test may be taken even after the admission process is completed.', 'K-12 school admissions', '2019-12-21 10:40:08.000000', '2019-12-23 04:09:37.358710', '2019-12-23 04:09:37.358721', NULL),
(6, 'Beyond Academics', 'beyond-academics', '<section class=\"about-us-area mt-50 section-padding-100\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"section-heading text-center mx-auto wow fadeInUp\" data-wow-delay=\"300ms\">\r\n<h3>Beyond Academics-From Convention to Excellence</h3>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid padding-md-right  col-md-12 col-sm-12 col-xs-12  row wow fadeInUp content_justify\" data-wow-delay=\"400ms\">\r\n<div class=\"col-md-9 col-sm-9 col-xs-12\">\r\n<p>At Atlantis, the students are exposed to a range of extra-curricular acvtivities to complemnt the acdemic developemnt and for the inculcation of a complete personality. The activities include the ones related to the arts,technology, performing arts and competitive sports. The competitive spirit is infused in students via house membership and there are various clubs to provide the ambience for artistic developemnt and team spirit.</p>\r\n<p>The dramatics and debating compretitions are palnned to build the confidence in children and engendering courage of conviction. Compretitive sports not only build physical fitness but give a boost to the team spirit in students. There are arts and crafts club, band and media lab membership for the development of skills in childen in the schooling years.</p>\r\n</div>\r\n<div class=\"col-md-3 col-sm-3 col-xs-12 no_padding\"><img src=\"../../../../../static/img/bg-img/bacademics.jpg\" /></div>\r\n</div>\r\n</section>', 'The dramatics and debating compretitions are palnned to build the confidence in children and engendering courage of conviction', 'K-12 school co-curricular activites', '2019-12-21 06:54:24.000000', '2019-12-21 10:43:33.748700', '2019-12-21 10:43:33.748709', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academyapp_testimonial`
--

CREATE TABLE `academyapp_testimonial` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(900) DEFAULT NULL,
  `content` longtext NOT NULL,
  `meta_description` longtext,
  `keywords` longtext,
  `punlished_on` datetime(6) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academyapp_testimonial`
--

INSERT INTO `academyapp_testimonial` (`id`, `title`, `slug`, `content`, `meta_description`, `keywords`, `punlished_on`, `created_on`, `modified_on`, `created_by_id`) VALUES
(1, 'Great teachers', 'great-teachers', '<p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>', '', '', '2019-12-21 06:37:23.000000', '2019-12-23 08:55:07.512720', '2019-12-23 08:55:07.512733', NULL),
(2, 'James Williams', 'james-williams', '<p>Vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibu lum est mat tis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio ves tibul. Etiam nec odio vestibulum est mat tis effic iturut magnaNec odio vestibulum est mattis effic iturut magna.</p>', '', '', '2019-12-21 06:37:57.000000', '2019-12-21 06:37:59.037528', '2019-12-21 06:37:59.037554', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academyapp_userprofile`
--

CREATE TABLE `academyapp_userprofile` (
  `id` int(11) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `address` longtext,
  `postcode` int(11) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `modified_on` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add enquiryform', 7, 'add_enquiryform'),
(20, 'Can change enquiryform', 7, 'change_enquiryform'),
(21, 'Can delete enquiryform', 7, 'delete_enquiryform'),
(22, 'Can add pages', 8, 'add_pages'),
(23, 'Can change pages', 8, 'change_pages'),
(24, 'Can delete pages', 8, 'delete_pages'),
(25, 'Can add lastest new', 9, 'add_lastestnew'),
(26, 'Can change lastest new', 9, 'change_lastestnew'),
(27, 'Can delete lastest new', 9, 'delete_lastestnew'),
(28, 'Can add job opening', 10, 'add_jobopening'),
(29, 'Can change job opening', 10, 'change_jobopening'),
(30, 'Can delete job opening', 10, 'delete_jobopening'),
(31, 'Can add job application form', 11, 'add_jobapplicationform'),
(32, 'Can change job application form', 11, 'change_jobapplicationform'),
(33, 'Can delete job application form', 11, 'delete_jobapplicationform'),
(34, 'Can view log entry', 1, 'view_logentry'),
(35, 'Can view permission', 2, 'view_permission'),
(36, 'Can view group', 4, 'view_group'),
(37, 'Can view user', 3, 'view_user'),
(38, 'Can view content type', 5, 'view_contenttype'),
(39, 'Can view session', 6, 'view_session'),
(40, 'Can view enquiryform', 7, 'view_enquiryform'),
(41, 'Can view pages', 8, 'view_pages'),
(42, 'Can view lastest new', 9, 'view_lastestnew'),
(43, 'Can view job application form', 11, 'view_jobapplicationform'),
(44, 'Can view job opening', 10, 'view_jobopening'),
(45, 'Can add testimonial', 12, 'add_testimonial'),
(46, 'Can change testimonial', 12, 'change_testimonial'),
(47, 'Can delete testimonial', 12, 'delete_testimonial'),
(48, 'Can view testimonial', 12, 'view_testimonial'),
(49, 'Can add user profile', 13, 'add_userprofile'),
(50, 'Can change user profile', 13, 'change_userprofile'),
(51, 'Can delete user profile', 13, 'delete_userprofile'),
(52, 'Can view user profile', 13, 'view_userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$eaxKrr77qBsw$5kKbBQK/S1OIVA6LkBXvcyCc0+X14jexAeVe4S/6CRM=', '2019-12-24 06:24:28.866498', 1, 'admin', '', '', '', 1, 1, '2019-12-05 05:18:31.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-12-05 11:26:29.749163', '2', 'asdg', 3, '', 7, 1),
(2, '2019-12-05 11:26:29.865531', '1', 'asdg', 3, '', 7, 1),
(3, '2019-12-05 12:10:53.640017', '1', 'About Us', 1, '[{\"added\": {}}]', 8, 1),
(4, '2019-12-05 12:12:38.917988', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"slug\"]}}]', 8, 1),
(5, '2019-12-05 12:16:34.255541', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(6, '2019-12-05 12:17:54.024290', '2', 'Curriculum', 1, '[{\"added\": {}}]', 8, 1),
(7, '2019-12-05 12:18:23.147760', '3', 'Infrastructure', 1, '[{\"added\": {}}]', 8, 1),
(8, '2019-12-05 12:18:40.756082', '4', 'Gallery', 1, '[{\"added\": {}}]', 8, 1),
(9, '2019-12-05 12:18:56.548890', '5', 'Admissions', 1, '[{\"added\": {}}]', 8, 1),
(10, '2019-12-05 12:19:11.698070', '6', 'Careers', 1, '[{\"added\": {}}]', 8, 1),
(11, '2019-12-05 12:19:36.060782', '7', 'Contact', 1, '[{\"added\": {}}]', 8, 1),
(12, '2019-12-06 10:11:16.830008', '1', 'science', 1, '[{\"added\": {}}]', 9, 1),
(13, '2019-12-06 10:16:32.970878', '1', 'science', 2, '[{\"changed\": {\"fields\": [\"created_by\", \"published_on\"]}}]', 9, 1),
(14, '2019-12-06 10:16:50.911547', '1', 'Science', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 9, 1),
(15, '2019-12-06 10:18:39.196417', '2', 'English', 1, '[{\"added\": {}}]', 9, 1),
(16, '2019-12-06 10:24:02.146749', '2', 'English', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 9, 1),
(17, '2019-12-06 10:24:17.228807', '1', 'Science', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 9, 1),
(18, '2019-12-06 10:24:41.060151', '2', 'English', 2, '[]', 9, 1),
(19, '2019-12-06 10:24:54.213894', '1', 'Science', 2, '[]', 9, 1),
(20, '2019-12-06 11:07:03.926904', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\", \"meta_description\", \"keywords\", \"punlished_on\"]}}]', 8, 1),
(21, '2019-12-06 11:14:42.041199', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(22, '2019-12-06 11:16:18.371711', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(23, '2019-12-06 11:19:12.231603', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(24, '2019-12-06 11:20:58.030056', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(25, '2019-12-06 11:22:48.846263', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(26, '2019-12-06 11:23:17.451543', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(27, '2019-12-06 11:35:38.717297', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(28, '2019-12-06 11:37:05.614248', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(29, '2019-12-06 11:39:03.515687', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(30, '2019-12-06 11:39:50.743946', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(31, '2019-12-06 11:42:57.664657', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(32, '2019-12-06 12:00:47.529868', '1', 'About Us', 2, '[]', 8, 1),
(33, '2019-12-06 12:07:19.243948', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(34, '2019-12-07 07:06:27.673840', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(35, '2019-12-07 07:07:55.032825', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(36, '2019-12-07 07:10:15.255876', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(37, '2019-12-07 07:11:37.008583', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(38, '2019-12-07 07:15:48.230003', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(39, '2019-12-07 07:16:18.067273', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(40, '2019-12-07 07:17:41.449394', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(41, '2019-12-07 07:21:19.104066', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(42, '2019-12-07 07:21:52.462433', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(43, '2019-12-07 07:22:36.389251', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(44, '2019-12-07 07:23:12.606976', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(45, '2019-12-07 07:26:26.317994', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(46, '2019-12-07 07:27:50.071107', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(47, '2019-12-07 07:28:23.042147', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(48, '2019-12-07 07:29:48.868634', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(49, '2019-12-07 07:30:23.258299', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(50, '2019-12-07 08:35:53.822586', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(51, '2019-12-07 08:37:33.774827', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(52, '2019-12-07 08:40:54.102095', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(53, '2019-12-07 08:53:00.117962', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(54, '2019-12-07 08:54:03.200651', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(55, '2019-12-07 08:55:33.630300', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(56, '2019-12-07 09:01:29.552924', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(57, '2019-12-07 09:08:35.963970', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(58, '2019-12-07 09:15:34.450847', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(59, '2019-12-07 09:22:27.368606', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(60, '2019-12-07 09:22:58.253054', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(61, '2019-12-07 09:23:59.367145', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(62, '2019-12-07 09:24:47.661364', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(63, '2019-12-07 09:26:09.442721', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(64, '2019-12-07 09:26:31.551248', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(65, '2019-12-07 09:29:07.972339', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(66, '2019-12-07 11:32:54.138097', '7', 'Contact', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(67, '2019-12-07 11:33:54.832699', '7', 'Contact', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(68, '2019-12-07 12:04:40.928141', '6', 'Careers', 3, '', 8, 1),
(69, '2019-12-07 12:05:07.037545', '1', 'About Us', 2, '[]', 8, 1),
(70, '2019-12-09 05:23:35.122659', '1', 'JobOpening object (1)', 1, '[{\"added\": {}}]', 10, 1),
(71, '2019-12-09 09:08:42.821001', '4', 'gowthami', 3, '', 11, 1),
(72, '2019-12-09 09:08:42.938433', '3', 'fdfs', 3, '', 11, 1),
(73, '2019-12-09 09:08:43.013513', '2', 'zsdfgz', 3, '', 11, 1),
(74, '2019-12-09 09:08:43.088617', '1', 'zsdfgz', 3, '', 11, 1),
(75, '2019-12-09 10:34:20.120818', '7', 'Contact', 3, '', 8, 1),
(76, '2019-12-09 11:24:07.596842', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(77, '2019-12-09 11:24:36.473234', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(78, '2019-12-09 11:25:00.985527', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(79, '2019-12-09 11:25:19.525262', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(80, '2019-12-09 11:25:37.566927', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(81, '2019-12-09 11:26:08.111976', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(82, '2019-12-09 11:26:52.826316', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(83, '2019-12-09 11:28:24.569409', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(84, '2019-12-09 11:29:14.154260', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(85, '2019-12-09 11:30:26.558904', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(86, '2019-12-09 11:53:17.616810', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(87, '2019-12-09 11:53:57.935510', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(88, '2019-12-09 11:54:13.555338', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(89, '2019-12-09 11:54:32.681819', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(90, '2019-12-09 11:54:53.614303', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(91, '2019-12-09 11:59:54.917943', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(92, '2019-12-09 12:00:52.422579', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(93, '2019-12-09 12:04:18.275270', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(94, '2019-12-09 12:05:56.170899', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(95, '2019-12-09 12:08:04.827702', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(96, '2019-12-09 12:08:53.121051', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(97, '2019-12-09 12:10:02.793699', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(98, '2019-12-09 12:10:20.121202', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(99, '2019-12-09 12:11:21.909478', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(100, '2019-12-09 12:14:38.016557', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(101, '2019-12-09 12:17:38.687311', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(102, '2019-12-09 12:18:40.778286', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(103, '2019-12-09 12:28:28.049702', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(104, '2019-12-09 12:32:19.738301', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(105, '2019-12-09 12:33:10.954577', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(106, '2019-12-10 12:22:48.086903', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(107, '2019-12-10 12:24:18.668783', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(108, '2019-12-10 12:27:17.094174', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(109, '2019-12-10 12:27:51.115653', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(110, '2019-12-10 12:32:35.282865', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 8, 1),
(111, '2019-12-16 11:36:04.296296', '2', 'English', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 9, 1),
(112, '2019-12-16 11:38:13.603487', '2', 'English', 2, '[{\"changed\": {\"fields\": [\"content\"]}}]', 9, 1),
(113, '2019-12-16 12:14:58.092424', '1', 'English Teacher', 2, '[{\"changed\": {\"fields\": [\"job_duties\", \"desired_profile\"]}}]', 10, 1),
(114, '2019-12-21 04:38:40.371857', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 3, 1),
(115, '2019-12-21 04:39:23.753560', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(116, '2019-12-21 04:41:12.357294', '2', 'Curriculum', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(117, '2019-12-21 04:41:38.020504', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(118, '2019-12-21 04:42:36.971516', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(119, '2019-12-21 05:14:36.042007', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(120, '2019-12-21 05:17:42.177249', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(121, '2019-12-21 05:19:35.984178', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(122, '2019-12-21 05:20:48.125924', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(123, '2019-12-21 05:27:27.281421', '4', 'Gallery', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(124, '2019-12-21 06:09:28.569852', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(125, '2019-12-21 06:37:24.575454', '1', 'Great teachers', 1, '[{\"added\": {}}]', 12, 1),
(126, '2019-12-21 06:37:59.039232', '2', 'James Williams', 1, '[{\"added\": {}}]', 12, 1),
(127, '2019-12-21 06:54:02.369307', '2', 'Academics', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 8, 1),
(128, '2019-12-21 06:54:25.249810', '6', 'Beyond Academics', 1, '[{\"added\": {}}]', 8, 1),
(129, '2019-12-21 07:15:25.522677', '2', 'Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(130, '2019-12-21 07:16:24.161517', '2', 'Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(131, '2019-12-21 07:16:56.724639', '2', 'Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(132, '2019-12-21 07:17:24.522437', '2', 'Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(133, '2019-12-21 07:18:24.085958', '6', 'Beyond Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(134, '2019-12-21 07:21:04.332856', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(135, '2019-12-21 07:23:14.836364', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(136, '2019-12-21 07:23:49.007599', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(137, '2019-12-21 07:24:29.732659', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(138, '2019-12-21 07:25:02.820355', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(139, '2019-12-21 07:40:51.464833', '6', 'Beyond Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(140, '2019-12-21 07:42:08.893594', '6', 'Beyond Academics', 2, '[]', 8, 1),
(141, '2019-12-21 09:19:52.530084', '2', 'Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(142, '2019-12-21 09:22:31.351827', '6', 'Beyond Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(143, '2019-12-21 09:30:37.433217', '6', 'Beyond Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(144, '2019-12-21 10:22:59.838243', '6', 'Beyond Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(145, '2019-12-21 10:31:50.404707', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Keywords\"]}}]', 8, 1),
(146, '2019-12-21 10:35:44.492185', '2', 'Academics', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Meta description\", \"Keywords\", \"Punlished on\"]}}]', 8, 1),
(147, '2019-12-21 10:37:36.550601', '3', 'Infrastructure', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Meta description\", \"Keywords\", \"Punlished on\"]}}]', 8, 1),
(148, '2019-12-21 10:40:09.734065', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Meta description\", \"Keywords\", \"Punlished on\"]}}]', 8, 1),
(149, '2019-12-21 10:41:03.410527', '6', 'Beyond Academics', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(150, '2019-12-21 10:43:33.755011', '6', 'Beyond Academics', 2, '[{\"changed\": {\"fields\": [\"Meta description\", \"Keywords\"]}}]', 8, 1),
(151, '2019-12-21 11:31:23.766258', '7', 'gasdgasdg', 3, '', 7, 1),
(152, '2019-12-21 11:31:23.796946', '6', 'sadgasdg', 3, '', 7, 1),
(153, '2019-12-21 11:31:23.847009', '5', 'Teja', 3, '', 7, 1),
(154, '2019-12-21 11:31:23.888633', '4', 'gfgf', 3, '', 7, 1),
(155, '2019-12-21 11:31:23.930370', '3', 'sagasggggg', 3, '', 7, 1),
(156, '2019-12-23 04:04:20.837596', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(157, '2019-12-23 04:05:30.479604', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(158, '2019-12-23 04:06:11.420585', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(159, '2019-12-23 04:06:42.537482', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(160, '2019-12-23 04:07:22.142666', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(161, '2019-12-23 04:09:37.361039', '5', 'Admissions', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(162, '2019-12-23 08:43:04.101048', '3', 'asd', 3, '', 12, 1),
(163, '2019-12-24 05:57:41.800696', '2', '', 3, '', 3, 1),
(164, '2019-12-24 05:57:46.918029', '7', 'asd@sdaga.com', 3, '', 3, 1),
(165, '2019-12-24 05:59:10.806361', '8', '', 3, '', 3, 1),
(166, '2019-12-24 06:14:36.657139', '10', '', 3, '', 3, 1),
(167, '2019-12-24 06:14:36.699747', '12', 'asdg', 3, '', 3, 1),
(168, '2019-12-24 06:16:35.347812', '15', 'test@ksdkk.com', 3, '', 3, 1),
(169, '2019-12-24 06:18:16.119266', '18', 'bhabdy@gmail.com', 3, '', 3, 1),
(170, '2019-12-24 06:18:16.170514', '17', 'test@ksdkk.com', 3, '', 3, 1),
(171, '2019-12-24 06:21:46.061824', '20', 'bhavya@gmail.com', 3, '', 3, 1),
(172, '2019-12-24 06:25:21.408964', '3', 'sag', 3, '', 9, 1),
(173, '2019-12-24 06:32:55.004440', '21', 'gsadg@gmaill.ocm', 3, '', 3, 1),
(174, '2019-12-24 06:33:05.387441', '23', 'gsadg@gmaill.ocm', 3, '', 3, 1),
(175, '2019-12-24 06:36:36.197968', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(176, '2019-12-24 06:37:43.005896', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1),
(177, '2019-12-24 06:38:44.526169', '1', 'About Us', 2, '[{\"changed\": {\"fields\": [\"Content\"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'academyapp', 'enquiryform'),
(11, 'academyapp', 'jobapplicationform'),
(10, 'academyapp', 'jobopening'),
(9, 'academyapp', 'lastestnew'),
(8, 'academyapp', 'pages'),
(12, 'academyapp', 'testimonial'),
(13, 'academyapp', 'userprofile'),
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-12-05 05:17:30.540744'),
(2, 'auth', '0001_initial', '2019-12-05 05:17:39.128745'),
(3, 'admin', '0001_initial', '2019-12-05 05:17:41.111928'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-12-05 05:17:41.162804'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-12-05 05:17:42.291783'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-12-05 05:17:43.029673'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-12-05 05:17:43.767381'),
(8, 'auth', '0004_alter_user_username_opts', '2019-12-05 05:17:43.817783'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-12-05 05:17:44.395198'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-12-05 05:17:44.436945'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-12-05 05:17:44.487895'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-12-05 05:17:45.216384'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2019-12-05 05:17:45.978077'),
(14, 'sessions', '0001_initial', '2019-12-05 05:17:46.522954'),
(15, 'academyapp', '0001_initial', '2019-12-05 10:39:18.557209'),
(16, 'academyapp', '0002_pages', '2019-12-05 12:04:04.216886'),
(17, 'academyapp', '0003_remove_enquiryform_last_name', '2019-12-06 09:33:57.040576'),
(18, 'academyapp', '0004_lastestnew', '2019-12-06 09:55:17.314716'),
(19, 'academyapp', '0005_remove_enquiryform_gender', '2019-12-07 06:15:04.155608'),
(20, 'academyapp', '0006_auto_20191207_1212', '2019-12-07 12:12:55.052225'),
(21, 'admin', '0003_logentry_add_action_flag_choices', '2019-12-21 04:26:09.579804'),
(22, 'auth', '0010_alter_group_name_max_length', '2019-12-21 04:26:09.703761'),
(23, 'auth', '0011_update_proxy_permissions', '2019-12-21 04:26:09.760869'),
(24, 'academyapp', '0007_testimonial', '2019-12-21 06:27:38.287281'),
(25, 'academyapp', '0008_userprofile', '2019-12-24 05:36:18.355790');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4evdwi8hx5oxqrbkfvx5sjz4loersi6y', 'NTdlYWE0M2NjMzFkMmMwMDUyMzcyZDU1ZjI2MGY2NjlmMGRhZmRkYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGY2MjBlNzFiMDcwNWEzYjFkODc5MmFhYWM1ZGM2NjBjMTExMDAwYyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-12-21 09:15:08.863580'),
('90h6813wzzjkgkwrfw9zcvtfv690kdyg', 'MzY5NTUxZjUwOTYyMjBlYTc0ODZlNzRmZmIwZTI4M2ZiMGI3NjgxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBmNjIwZTcxYjA3MDVhM2IxZDg3OTJhYWFjNWRjNjYwYzExMTAwMGMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2019-12-30 12:14:20.624096'),
('cmc4as2z9obme2rcf0qlw36zvle7euot', 'ZWZhMGY2MmMxZDcxNTFiMTIwYzk3ZDVmZjNjNWUzNDU0NTU1MGRkMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGY2MjBlNzFiMDcwNWEzYjFkODc5MmFhYWM1ZGM2NjBjMTExMDAwYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2019-12-19 10:39:55.007363'),
('g5igreyo0vp9fh282490ikk7qn12vpbr', 'MTc0NDM1NzA2MWQyODUzNWY1NjJlOWE1YmQzOGZmOTIxMDE0YWFlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMTMyOTI4YTUwMDQ1YTEwMjQ5Y2JlZjgyM2U4ZmQzMDg4NDI1NmZkIn0=', '2020-01-06 08:42:57.894388'),
('gnfgnxndektlp0j4wvvp3mcuqerxar7s', 'ZjkzZjkyZDU4OWE4YWU4MzdjM2MzOWE1NTM4MzZkZTY0ZDYwZmNiYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwZjYyMGU3MWIwNzA1YTNiMWQ4NzkyYWFhYzVkYzY2MGMxMTEwMDBjIn0=', '2019-12-21 07:04:29.156479'),
('hak0xrz9h05q6es5men5ds8420hw11f8', 'MzY5NTUxZjUwOTYyMjBlYTc0ODZlNzRmZmIwZTI4M2ZiMGI3NjgxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBmNjIwZTcxYjA3MDVhM2IxZDg3OTJhYWFjNWRjNjYwYzExMTAwMGMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2019-12-30 11:35:07.498218'),
('iyxq0fk4euepsaxqceklkm4e8xo83vva', 'ZjkzZjkyZDU4OWE4YWU4MzdjM2MzOWE1NTM4MzZkZTY0ZDYwZmNiYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwZjYyMGU3MWIwNzA1YTNiMWQ4NzkyYWFhYzVkYzY2MGMxMTEwMDBjIn0=', '2019-12-25 10:46:46.739918'),
('l3z2jx48h2ccnzdxcemxkroc8yclno77', 'MTc0NDM1NzA2MWQyODUzNWY1NjJlOWE1YmQzOGZmOTIxMDE0YWFlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMTMyOTI4YTUwMDQ1YTEwMjQ5Y2JlZjgyM2U4ZmQzMDg4NDI1NmZkIn0=', '2020-01-07 05:38:21.909970'),
('laclqs6oxjf9u1lj9g1pelp8aamvy6wq', 'MTc0NDM1NzA2MWQyODUzNWY1NjJlOWE1YmQzOGZmOTIxMDE0YWFlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyMTMyOTI4YTUwMDQ1YTEwMjQ5Y2JlZjgyM2U4ZmQzMDg4NDI1NmZkIn0=', '2020-01-04 04:38:48.678218'),
('m5xa60oqrqxi4izuczr8ql807o0aliuz', 'ZTMyYTE5MDdlYjU0M2MxMzA0YTUwZTQ3ZWRlZmJmZTQ0ZDA4YWUxYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZjYyMGU3MWIwNzA1YTNiMWQ4NzkyYWFhYzVkYzY2MGMxMTEwMDBjIn0=', '2019-12-24 12:19:30.363285'),
('me2i75zc7imi0mm99ld3doh9iuzh6n4u', 'ZjkzZjkyZDU4OWE4YWU4MzdjM2MzOWE1NTM4MzZkZTY0ZDYwZmNiYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwZjYyMGU3MWIwNzA1YTNiMWQ4NzkyYWFhYzVkYzY2MGMxMTEwMDBjIn0=', '2019-12-23 04:29:15.415165'),
('nf67p1u3qbz5kkfl8mytiaixwnmfbljk', 'NTdlYWE0M2NjMzFkMmMwMDUyMzcyZDU1ZjI2MGY2NjlmMGRhZmRkYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGY2MjBlNzFiMDcwNWEzYjFkODc5MmFhYWM1ZGM2NjBjMTExMDAwYyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-12-20 10:10:37.663427'),
('nikhdvvs61qow3itghg4lr0btptilkxy', 'ZTEwMjZjOTY5N2U0ZTIzOWQ5NDc4ODdkZWNiYzg0ZDBmOTg3ZWEyZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBmNjIwZTcxYjA3MDVhM2IxZDg3OTJhYWFjNWRjNjYwYzExMTAwMGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-12-24 04:12:38.061372'),
('s0d4nqxnzhdeee6153fkdjy0tqp2qmmx', 'NTdlYWE0M2NjMzFkMmMwMDUyMzcyZDU1ZjI2MGY2NjlmMGRhZmRkYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGY2MjBlNzFiMDcwNWEzYjFkODc5MmFhYWM1ZGM2NjBjMTExMDAwYyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2020-01-04 04:04:19.357864');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academyapp_enquiryform`
--
ALTER TABLE `academyapp_enquiryform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academyapp_jobapplicationform`
--
ALTER TABLE `academyapp_jobapplicationform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academyapp_jobapplic_job_title_id_b2a391f3_fk_academyap` (`job_title_id`);

--
-- Indexes for table `academyapp_jobopening`
--
ALTER TABLE `academyapp_jobopening`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academyapp_jobopening_created_by_id_0674a344_fk_auth_user_id` (`created_by_id`),
  ADD KEY `academyapp_jobopening_slug_80c01e0b` (`slug`(767));

--
-- Indexes for table `academyapp_lastestnew`
--
ALTER TABLE `academyapp_lastestnew`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academyapp_lastestnew_created_by_id_e6a7dd67_fk_auth_user_id` (`created_by_id`),
  ADD KEY `academyapp_lastestnew_slug_62739e40` (`slug`(767));

--
-- Indexes for table `academyapp_pages`
--
ALTER TABLE `academyapp_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academyapp_pages_created_by_id_8c7bf394_fk_auth_user_id` (`created_by_id`),
  ADD KEY `academyapp_pages_slug_d18f5029` (`slug`(767));

--
-- Indexes for table `academyapp_testimonial`
--
ALTER TABLE `academyapp_testimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academyapp_testimonial_created_by_id_06bb0b57_fk_auth_user_id` (`created_by_id`),
  ADD KEY `academyapp_testimonial_slug_b97751b4` (`slug`);

--
-- Indexes for table `academyapp_userprofile`
--
ALTER TABLE `academyapp_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academyapp_userprofile_user_id_0c3d9c11_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academyapp_enquiryform`
--
ALTER TABLE `academyapp_enquiryform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `academyapp_jobapplicationform`
--
ALTER TABLE `academyapp_jobapplicationform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `academyapp_jobopening`
--
ALTER TABLE `academyapp_jobopening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `academyapp_lastestnew`
--
ALTER TABLE `academyapp_lastestnew`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `academyapp_pages`
--
ALTER TABLE `academyapp_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `academyapp_testimonial`
--
ALTER TABLE `academyapp_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `academyapp_userprofile`
--
ALTER TABLE `academyapp_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `academyapp_jobapplicationform`
--
ALTER TABLE `academyapp_jobapplicationform`
  ADD CONSTRAINT `academyapp_jobapplic_job_title_id_b2a391f3_fk_academyap` FOREIGN KEY (`job_title_id`) REFERENCES `academyapp_jobopening` (`id`);

--
-- Constraints for table `academyapp_jobopening`
--
ALTER TABLE `academyapp_jobopening`
  ADD CONSTRAINT `academyapp_jobopening_created_by_id_0674a344_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `academyapp_lastestnew`
--
ALTER TABLE `academyapp_lastestnew`
  ADD CONSTRAINT `academyapp_lastestnew_created_by_id_e6a7dd67_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `academyapp_pages`
--
ALTER TABLE `academyapp_pages`
  ADD CONSTRAINT `academyapp_pages_created_by_id_8c7bf394_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `academyapp_testimonial`
--
ALTER TABLE `academyapp_testimonial`
  ADD CONSTRAINT `academyapp_testimonial_created_by_id_06bb0b57_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `academyapp_userprofile`
--
ALTER TABLE `academyapp_userprofile`
  ADD CONSTRAINT `academyapp_userprofile_user_id_0c3d9c11_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
