#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'toplefttelephone'
wp option delete '
            topleftemail1'
wp option delete 'toprightregister'
wp option delete 'toprightlogin'
wp option delete 'footercontactno'
wp option delete 'footercontactmail'
wp option delete 'footercontactglobe'
wp option delete 'footersocialtwitter'
wp option delete 'footersocialfacebook'
wp option delete 'footersocialgoogle'
wp option delete 'footersociallinkdin'
wp option delete 'footeryoutube'
wp option delete 'footer_images'
wp option delete 'sliderconfirm'
wp option delete 'trade_pic'
wp option delete 'section1'
wp option delete 'sectiontitle'
wp option delete 'sectiondesc'
wp option delete 'sectionposttype'
wp option delete 'sectionnofposts'
wp option delete 'section1numcolumn'
wp option delete 'section1norderby'
wp option delete 'sectionnordertype'
wp option delete 'section2'
wp option delete 'section2title'
wp option delete 'sectio2descr'
wp option delete 'section2posttype'
wp option delete 'section2nofposts'
wp option delete 'section2numcolumn'
wp option delete 'section2norderby'
wp option delete 'section2nordertype'
wp option delete 'section3'
wp option delete 'section3title'
wp option delete 'section3desc'
wp option delete 'section3posttype'
wp option delete 'section3nofposts'
wp option delete 'section3numcolumn'
wp option delete 'section3norder'
wp option delete 'section3norderby'
wp option delete 'section4'
wp option delete 'section4title'
wp option delete 'section4desc'
wp option delete 'section4posttype'
wp option delete 'section4nofposts'
wp option delete 'section4numcolumn'
wp option delete 'section4norder'
wp option delete 'section4norderby'
wp option delete 'section5'
wp option delete 'section5title'
wp option delete 'section5desc'
wp option delete 'section5posttype'
wp option delete 'section5nofposts'
wp option delete 'section5numcolumn'
wp option delete 'section5norder'
wp option delete 'section5norderby'
wp option delete 'topleftemail1'
wp option delete 'theme_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youtube_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youtube_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youtube_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youtube_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_assement_des'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_assement_des'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_assement_des'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_assement_des'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_course_banner_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_course_banner_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_course_banner_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_course_banner_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qsde_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qsde_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qsde_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qsde_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qasx'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qasx'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qasx'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qasx'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_retake_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_retake_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_retake_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_retake_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gsp_lms_tb_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gsp_lms_tb_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gsp_lms_tb_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gsp_lms_tb_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_external_link_buy_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_external_link_buy_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_external_link_buy_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_external_link_buy_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_passinggrade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_passinggrade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_passinggrade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_passinggrade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms-course-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms-course-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms-course-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms-course-price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lms_course_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lms_course_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lms_course_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lms_course_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsp_required_enroll'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsp_required_enroll'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsp_required_enroll'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsp_required_enroll'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_assement_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_assement_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_assement_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_assement_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_show_correct_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_show_correct_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_show_correct_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_show_correct_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_review_question'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_review_question'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_review_question'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_review_question'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_pagination_question'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_pagination_question'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_pagination_question'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_pagination_question'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_assement_duration_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_assement_duration_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_assement_duration_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_assement_duration_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_assement_minus_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_assement_minus_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_assement_minus_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_assement_minus_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_assement_minus_skip_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_assement_minus_skip_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_assement_minus_skip_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_assement_minus_skip_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_assement_passing_grade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_assement_passing_grade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_assement_passing_grade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_assement_passing_grade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_assement_retake'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_assement_retake'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_assement_retake'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_assement_retake'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_question_mark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_question_mark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_question_mark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_question_mark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsplmsq_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsplmsq_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsplmsq_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsplmsq_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructor_experience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructor_experience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructor_experience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructor_experience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructor_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructor_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructor_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructor_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructor_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructor_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructor_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructor_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructor_instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructor_instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructor_instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructor_instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructor_whatsapp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructor_whatsapp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructor_whatsapp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructor_whatsapp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instructor_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instructor_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instructor_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instructor_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbit_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbit_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbit_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbit_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lms_question_hint'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lms_question_hint'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lms_question_hint'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lms_question_hint'"
