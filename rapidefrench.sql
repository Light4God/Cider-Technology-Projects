-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 04:51 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapidefrench`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` text NOT NULL,
  `blog_title` text NOT NULL,
  `blog_title_slug` text NOT NULL,
  `blog_author` text NOT NULL,
  `blog_content` text NOT NULL,
  `blog_thumbnail` text NOT NULL,
  `date_post` text NOT NULL,
  `blog_tag` text NOT NULL,
  `blog_keyword` text NOT NULL,
  `blog_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_category_id`, `blog_title`, `blog_title_slug`, `blog_author`, `blog_content`, `blog_thumbnail`, `date_post`, `blog_tag`, `blog_keyword`, `blog_description`) VALUES
(1, '1', 'I love French as a language', 'I-love-French-as-a-language', '1', 'bla bla ;la kd vrj vrj vrjk fvrdvfc fcv rfcv fcv fcv ', 'blog.jpg', '2023-09-11', 'french, speacking, language', 'french, speacking, language', 'bdfjc j ficjhwijhcv ijjsbvfb fdv');

-- --------------------------------------------------------

--
-- Table structure for table `blog_author`
--

CREATE TABLE `blog_author` (
  `author_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `designation` text NOT NULL,
  `author_description` text NOT NULL,
  `author_image` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `linkedin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_author`
--

INSERT INTO `blog_author` (`author_id`, `fullname`, `username`, `password`, `designation`, `author_description`, `author_image`, `facebook`, `twitter`, `instagram`, `linkedin`) VALUES
(1, 'Sola Olayinka', 'solayinka', '123456789', 'Language Expert', '', 'sola.jpg', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `blog_category` text NOT NULL,
  `blog_category_slug` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `blog_category`, `blog_category_slug`) VALUES
(1, 'French Language', 'French-Language'),
(2, 'General Knowledge', 'General-Knowledge');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `comment_id` int(11) NOT NULL,
  `blog_id` text NOT NULL,
  `user_id` text NOT NULL,
  `user_comment` text NOT NULL,
  `date_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment_reply`
--

CREATE TABLE `blog_comment_reply` (
  `reply_id` int(11) NOT NULL,
  `comment_id` text NOT NULL,
  `user_id` text NOT NULL,
  `user_reply` text NOT NULL,
  `reply_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blog_reaction`
--

CREATE TABLE `blog_reaction` (
  `reaction_id` int(11) NOT NULL,
  `blog_id` text NOT NULL,
  `clap_count` text NOT NULL,
  `like_count` text NOT NULL,
  `love_count` text NOT NULL,
  `user_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `course_title` text NOT NULL,
  `course_slug` text NOT NULL,
  `course_short_description` text NOT NULL,
  `instructor_id` text NOT NULL,
  `course_language` text NOT NULL,
  `certification` text NOT NULL,
  `skill_level` text NOT NULL,
  `course_overview` text NOT NULL,
  `course_requirement` text NOT NULL,
  `course_description` text NOT NULL,
  `course_image` text NOT NULL,
  `course_price` text NOT NULL,
  `discount` text NOT NULL,
  `date_created` text NOT NULL,
  `course_tag` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `category_id`, `course_title`, `course_slug`, `course_short_description`, `instructor_id`, `course_language`, `certification`, `skill_level`, `course_overview`, `course_requirement`, `course_description`, `course_image`, `course_price`, `discount`, `date_created`, `course_tag`, `status`) VALUES
(1, '1', 'Introduction to Website Development ', 'Introduction-to-Website-Development', 'It is a long established fact that a reader will be distracted.\n\n', '1', 'English, French', 'Yes', 'Basic', '<p>Are you new to PHP or need a refresher? Then this course will help you get all the fundamentals of Procedural PHP, Object Oriented PHP, MYSQLi and ending the course by building a CMS system similar to WordPress, Joomla or Drupal. Knowing PHP has allowed me to make enough money to stay home and make courses like this one for students all over the world.</p>\r\n\r\n', '<ul>\r\n<li>Become an advanced, confident, and modern JavaScript developer from scratch.\r\n</li><li>Have an intermediate skill level of Python programming.</li>\r\n<li>Have a portfolio of various data analysis projects.</li><li>\r\nUse the numpy library to create and manipulate arrays.</li>\r\n<ul>', '<ul>\r\n<li>Become an advanced, confident, and modern JavaScript developer from scratch.\r\n</li><li>Have an intermediate skill level of Python programming.</li>\r\n<li>Have a portfolio of various data analysis projects.</li><li>\r\nUse the numpy library to create and manipulate arrays.</li>\r\n<ul>', 'course-content.jpg', '12000', '20', '2023-09-11', '', 'Active'),
(2, '1', 'Blas Blass', 'Blas-Blass', 'It is a long established fact that a reader will be distracted.', '1', '', '', '', '', '', '', '', '0', '0', '', '', ''),
(3, '2', 'tola the french', 'tola-the-french', 'It is a long established fact that a reader will be distracted.', '1', '', '', '', '', '', '', '', '0', '0', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `course_category`
--

CREATE TABLE `course_category` (
  `category_id` int(11) NOT NULL,
  `category` text NOT NULL,
  `category_desc` text NOT NULL,
  `category_code` text NOT NULL,
  `category_slug` text NOT NULL,
  `category_image` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_category`
--

INSERT INTO `course_category` (`category_id`, `category`, `category_desc`, `category_code`, `category_slug`, `category_image`, `status`) VALUES
(1, 'Speak French', 'Learn all Basics of Web Development', 'RPDF-908', 'Web-Development', 'web-design.jpg', 'Active'),
(2, 'Learn French', 'Learn the visual art courses', 'RPDF-098', 'Graphics-Design', 'graphic-design.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE `course_content` (
  `cc_id` int(11) NOT NULL,
  `cc_title` text NOT NULL,
  `cc_order` text NOT NULL,
  `course_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_enrolment`
--

CREATE TABLE `course_enrolment` (
  `enrol_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `date_enrolled` text NOT NULL,
  `date_start` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_lecture`
--

CREATE TABLE `course_lecture` (
  `cl_id` int(11) NOT NULL,
  `cl_title` text NOT NULL,
  `cl_content` text NOT NULL,
  `policy` text NOT NULL,
  `cl_script` text NOT NULL,
  `cl_order` text NOT NULL,
  `cl_file` text NOT NULL,
  `cl_file_type` text NOT NULL,
  `cl_file_size` text NOT NULL,
  `cl_video_file_length` text NOT NULL,
  `cc_id` text NOT NULL,
  `date_add` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course_rating`
--

CREATE TABLE `course_rating` (
  `rating_id` int(11) NOT NULL,
  `course_id` text NOT NULL,
  `star_1` text NOT NULL,
  `star_2` text NOT NULL,
  `star_3` text NOT NULL,
  `star_4` text NOT NULL,
  `star_5` text NOT NULL,
  `user_id` text NOT NULL,
  `rating_comment` text NOT NULL,
  `rating_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `date_add` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `question`, `answer`, `date_add`) VALUES
(1, 'How can I get the customer support?', ' After purchasing the product need you any support you can be share with\r\n                                            us with sending mail to rainbowit10@gmail.com.', ''),
(2, 'jkfmv, ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `othername` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `twiter` text NOT NULL,
  `instagram` text NOT NULL,
  `linkedin` text NOT NULL,
  `facebook` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `biography` text NOT NULL,
  `skill` text NOT NULL,
  `passport` text NOT NULL,
  `date_join` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `firstname`, `lastname`, `othername`, `email`, `phone`, `twiter`, `instagram`, `linkedin`, `facebook`, `username`, `password`, `biography`, `skill`, `passport`, `date_join`, `status`) VALUES
(1, 'Bola', 'Hammed', 'Tinubu', 'bolahameed121@gmail.com', '09087654567', '', '', '', '', 'tinubu01', '12345678', '', '', 'tinubu.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `m_name` text NOT NULL,
  `m_email` text NOT NULL,
  `m_phone` text NOT NULL,
  `m_title` text NOT NULL,
  `m_message` text NOT NULL,
  `m_date` text NOT NULL,
  `m_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `m_name`, `m_email`, `m_phone`, `m_title`, `m_message`, `m_date`, `m_status`) VALUES
(1, 'Basheer Haadi', 'bashirhaadiy@gmail.com', '08154755535', 'welcoone dfn fm dnfkkf c frfdkjfrbmf ckmdb jrbfe djf ]', '`jdfcejdokc cknv jjdf vco jd vc.n ,nx d xvkhd ', '2023/05/14 23:14:23', '0');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `newsletter_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `date_join` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `middlename` text NOT NULL,
  `email` text NOT NULL,
  `phone_number` text NOT NULL,
  `date_register` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `biography` text NOT NULL,
  `occupation` text NOT NULL,
  `my_picture` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `middlename`, `email`, `phone_number`, `date_register`, `username`, `password`, `biography`, `occupation`, `my_picture`, `status`) VALUES
(1, 'Basheer', 'Haadi', 'A', 'bashirhaadiy@gmail.com', '08154755535', '2023-09-10', 'dignity1', '123456789', '', '', 'dignity.png', '1'),
(2, 'Ayegboyin', 'Samson', 'I.', 'Ifeayegboyin12@gmail.com', '090876654432', '2023-09-11', 'ife001', '123456789', '', '', 'ife.png', '1'),
(3, 'Bolatito', 'Joke', 'I.', 'bolatito112@gmail.com', '09087644633', '2023-09-11', 'bolatito1', '123456789', '', '', 'bola.png', '1'),
(4, 'Olorunpoto', 'Abdulrahman', 'O.', 'olorunpotoseyi@gmail.com', '09086545667878', '2023-09-11', 'olorunpoto', '12345678', '', '', 'poto.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `website_setting`
--

CREATE TABLE `website_setting` (
  `web_id` int(11) NOT NULL,
  `webname` text NOT NULL,
  `web_email` text NOT NULL,
  `web_phone` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `intagram` text NOT NULL,
  `linkedin` text NOT NULL,
  `youtube` text NOT NULL,
  `whatsapp` text NOT NULL,
  `term_and_condition` text NOT NULL,
  `privacy_and_policy` text NOT NULL,
  `web_icon` text NOT NULL,
  `web_logo_black` text NOT NULL,
  `web_logo_color` text NOT NULL,
  `footer_short_content` text NOT NULL,
  `home_span_text` text NOT NULL,
  `home_head_text` text NOT NULL,
  `why_choose_us_heading` text NOT NULL,
  `why_choose_us_text` text NOT NULL,
  `why_choose_us_countdown` text NOT NULL,
  `why_choose_us_background_image` text NOT NULL,
  `homepage_image` text NOT NULL,
  `home_avatar_text` text NOT NULL,
  `home_avatar_line` text NOT NULL,
  `email_2` text NOT NULL,
  `phone_2` text NOT NULL,
  `office_address` text NOT NULL,
  `map_embed_address` text NOT NULL,
  `contact_page_image` text NOT NULL,
  `about_page_content` text NOT NULL,
  `about_page_intro_video` text NOT NULL,
  `about_page_intro_image` text NOT NULL,
  `about_page_image` text NOT NULL,
  `about_page_title` text NOT NULL,
  `about_page_side_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `website_setting`
--

INSERT INTO `website_setting` (`web_id`, `webname`, `web_email`, `web_phone`, `facebook`, `twitter`, `intagram`, `linkedin`, `youtube`, `whatsapp`, `term_and_condition`, `privacy_and_policy`, `web_icon`, `web_logo_black`, `web_logo_color`, `footer_short_content`, `home_span_text`, `home_head_text`, `why_choose_us_heading`, `why_choose_us_text`, `why_choose_us_countdown`, `why_choose_us_background_image`, `homepage_image`, `home_avatar_text`, `home_avatar_line`, `email_2`, `phone_2`, `office_address`, `map_embed_address`, `contact_page_image`, `about_page_content`, `about_page_intro_video`, `about_page_intro_image`, `about_page_image`, `about_page_title`, `about_page_side_content`) VALUES
(21, 'Rapide French', 'domain.rapidefrench@gmail.com', '+234 813 206 9667', 'https://facebook.com/rapidefrench', 'https://twitter.com/rapidefrench', 'https://instagram.com/rapidefrench', 'https://linkedin.com/c/rapidefrench', 'https://youtube.com/rapidefrench', 'https://wa.me/', 'kjfhjkhfhr dfjkg', 'bfchhfkckshfcg', 'favicon.png', 'black_logo.png', 'white_logo.png', 'We’re always in search for talented and motivated people. Don’t be shy introduce yourself!', 'EDUCATION FOR EVERYONE', 'Innovative Language Academic Platform for Your Career.', 'Free Resources Learning English for Beginner', 'Learning new technology, data sience, university, communicate to global world and build a bright future with our Rapide.', '2023-09-20', 'why_us.jpg', 'home.jpg', 'Join Over 3000+ Students', 'Have a new ideas every week.', 'support@rapidefrench.net', '+2349087654323', 'Lane 6, Layout 2, Kitsmear Lagos', '', '', 'Whether you\'re a beginner or an advanced learner, we have a course that\'s right for you. Our courses cover all aspects of the French language, from grammar and vocabulary to pronunciation and conversation.', 'https://www.youtube.com/watch?v=jGbcn0K0Pfo', 'rapide.png', 'about_side.jpg', 'Welcome to Rapide for your french language course.', '<p>Rapide educational platform ipsum dolor sit amet consectetur adipisicing elit.  Nam inventore praesentium alias incidunt! Veritatis, necessitatibus fuga dolore tenetur, beatae suscipit fugit est ea perspiciatis quo provident nisi dolor similique architecto nihil.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_author`
--
ALTER TABLE `blog_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `blog_comment_reply`
--
ALTER TABLE `blog_comment_reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `blog_reaction`
--
ALTER TABLE `blog_reaction`
  ADD PRIMARY KEY (`reaction_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `course_content`
--
ALTER TABLE `course_content`
  ADD PRIMARY KEY (`cc_id`);

--
-- Indexes for table `course_enrolment`
--
ALTER TABLE `course_enrolment`
  ADD PRIMARY KEY (`enrol_id`);

--
-- Indexes for table `course_lecture`
--
ALTER TABLE `course_lecture`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `course_rating`
--
ALTER TABLE `course_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `website_setting`
--
ALTER TABLE `website_setting`
  ADD PRIMARY KEY (`web_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_author`
--
ALTER TABLE `blog_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_comment_reply`
--
ALTER TABLE `blog_comment_reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_reaction`
--
ALTER TABLE `blog_reaction`
  MODIFY `reaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_category`
--
ALTER TABLE `course_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `cc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_enrolment`
--
ALTER TABLE `course_enrolment`
  MODIFY `enrol_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_lecture`
--
ALTER TABLE `course_lecture`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_rating`
--
ALTER TABLE `course_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `website_setting`
--
ALTER TABLE `website_setting`
  MODIFY `web_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
