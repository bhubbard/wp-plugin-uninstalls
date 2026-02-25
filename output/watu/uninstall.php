<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('watu_rated');
delete_site_option('watu_rated');
delete_option('watu_show_answers');
delete_site_option('watu_show_answers');
delete_option('watu_no_ajax');
delete_site_option('watu_no_ajax');
delete_option('watu_integrate_moolamojo');
delete_site_option('watu_integrate_moolamojo');
delete_option('watu_answer_type');
delete_site_option('watu_answer_type');
delete_option('watuproshare_facebook_appid');
delete_site_option('watuproshare_facebook_appid');
delete_option('namaste_use_exams');
delete_site_option('namaste_use_exams');
delete_option('namaste_access_exam_started_lesson');
delete_site_option('namaste_access_exam_started_lesson');
delete_option('watuproshare_linkedin');
delete_site_option('watuproshare_linkedin');
delete_option('watuproshare_twitter');
delete_site_option('watuproshare_twitter');
delete_option('watu_csv_delim');
delete_site_option('watu_csv_delim');
delete_option('watu_csv_quotes');
delete_site_option('watu_csv_quotes');
delete_option('watu_admin_email');
delete_site_option('watu_admin_email');
delete_option('watu_locale_url');
delete_site_option('watu_locale_url');
delete_option('watu_datepicker_css');
delete_site_option('watu_datepicker_css');
delete_option('watu_text_captcha');
delete_site_option('watu_text_captcha');
delete_option('watu_demo_quiz_created');
delete_site_option('watu_demo_quiz_created');
delete_option('watu_delete_db');
delete_site_option('watu_delete_db');
delete_option('watu_delete_db_confirm');
delete_site_option('watu_delete_db_confirm');
delete_option('watu_use_the_content');
delete_site_option('watu_use_the_content');
delete_option('watu_debug_mode');
delete_site_option('watu_debug_mode');
delete_option('watu_quiz_word');
delete_site_option('watu_quiz_word');
delete_option('watu_quiz_word_plural');
delete_site_option('watu_quiz_word_plural');
delete_option('watu_dont_autoscroll');
delete_site_option('watu_dont_autoscroll');
delete_option('watu_single_page');
delete_site_option('watu_single_page');
delete_option('watu_db_tables');
delete_site_option('watu_db_tables');
delete_option('watu_version');
delete_site_option('watu_version');
delete_option('watu_admin_notice');
delete_site_option('watu_admin_notice');

