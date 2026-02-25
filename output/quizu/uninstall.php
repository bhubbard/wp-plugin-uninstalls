<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quizu_settings_email_address');
delete_site_option('quizu_settings_email_address');
delete_option('quizu_settings_email_name');
delete_site_option('quizu_settings_email_name');
delete_option('quizu_settings_default_color');
delete_site_option('quizu_settings_default_color');
delete_option('quizu_settings_autosave_flag');
delete_site_option('quizu_settings_autosave_flag');
delete_option('quizu_settings_autosave_quiz_flag');
delete_site_option('quizu_settings_autosave_quiz_flag');
delete_option('quizu_settings_defaults_stored');
delete_site_option('quizu_settings_defaults_stored');
delete_option('quizu_settings_permissions');
delete_site_option('quizu_settings_permissions');
delete_option('quizu_settings_user_login_flag');
delete_site_option('quizu_settings_user_login_flag');
delete_option('quizu_settings_texts_overlap');
delete_site_option('quizu_settings_texts_overlap');
delete_option('quizu_settings_texts_integer');
delete_site_option('quizu_settings_texts_integer');
delete_option('quizu_settings_texts_reset');
delete_site_option('quizu_settings_texts_reset');
delete_option('quizu_settings_texts_next');
delete_site_option('quizu_settings_texts_next');
delete_option('quizu_settings_texts_essay_error');
delete_site_option('quizu_settings_texts_essay_error');
delete_option('quizu_settings_texts_checked_error');
delete_site_option('quizu_settings_texts_checked_error');
delete_option('quizu_settings_texts_error');
delete_site_option('quizu_settings_texts_error');
delete_option('quizu_settings_texts_share');
delete_site_option('quizu_settings_texts_share');
delete_option('quizu_settings_texts_email');
delete_site_option('quizu_settings_texts_email');
delete_option('quizu_settings_texts_send');
delete_site_option('quizu_settings_texts_send');
delete_option('quizu_settings_email_message');
delete_site_option('quizu_settings_email_message');
delete_option('quizu_settings_email_subject');
delete_site_option('quizu_settings_email_subject');
delete_option('quizu_settings_texts_post_email');
delete_site_option('quizu_settings_texts_post_email');
delete_option('quizu_settings_texts_email_error');
delete_site_option('quizu_settings_texts_email_error');
delete_option('quizu_settings_texts_total_score');
delete_site_option('quizu_settings_texts_total_score');
delete_option('quizu_settings_social_sharing_flag');
delete_site_option('quizu_settings_social_sharing_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'quizu_settings_texts_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'quizu_settings_email_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'quizu_settings_permanent_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'quizu_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quizu_user_login_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quizu_user_login_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quizu_user_login_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quizu_user_login_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quizu_show_scores_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quizu_show_scores_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quizu_show_scores_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quizu_show_scores_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quizu_result_criteria_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quizu_result_criteria_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quizu_result_criteria_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quizu_result_criteria_flag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_quizu_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_quizu_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_quizu_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_quizu_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quizu_questions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quizu_questions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quizu_questions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quizu_questions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quizu_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quizu_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quizu_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quizu_results' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_quizu_linked_quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_quizu_linked_quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_quizu_linked_quiz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_quizu_linked_quiz' ) );

