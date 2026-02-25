<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qa_index_text_color');
delete_site_option('qa_index_text_color');
delete_option('qa_index_bold');
delete_site_option('qa_index_bold');
delete_option('question_text_color');
delete_site_option('question_text_color');
delete_option('question_bold');
delete_site_option('question_bold');
delete_option('question_justify');
delete_site_option('question_justify');
delete_option('answer_text_color');
delete_site_option('answer_text_color');
delete_option('answer_bold');
delete_site_option('answer_bold');
delete_option('answer_justify');
delete_site_option('answer_justify');

