<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quizCreator_collect_emails');
delete_site_option('quizCreator_collect_emails');
delete_option('quizCreator_show_result_on_page');
delete_site_option('quizCreator_show_result_on_page');
delete_option('quizCreator_show_subscribe_option');
delete_site_option('quizCreator_show_subscribe_option');
delete_option('quizCreator_text_settings');
delete_site_option('quizCreator_text_settings');
delete_option('quizCreator_email_override');
delete_site_option('quizCreator_email_override');
delete_option('quizCreator_custom_email');
delete_site_option('quizCreator_custom_email');
delete_option('quizCreator_version');
delete_site_option('quizCreator_version');

