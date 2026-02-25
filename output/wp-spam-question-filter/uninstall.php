<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_spam_question_filter_db_version');
delete_site_option('wp_spam_question_filter_db_version');
delete_option('wp_spam_question_filter_enable');
delete_site_option('wp_spam_question_filter_enable');
delete_option('wp_spam_question_filter_questions');
delete_site_option('wp_spam_question_filter_questions');
delete_option('wp_spam_question_filter_answers');
delete_site_option('wp_spam_question_filter_answers');
delete_option('wp_spam_question_filter_registration');
delete_site_option('wp_spam_question_filter_registration');
delete_option('wp_spam_question_filter_prefix');
delete_site_option('wp_spam_question_filter_prefix');
delete_option('wp_spam_question_filter_question');
delete_site_option('wp_spam_question_filter_question');

