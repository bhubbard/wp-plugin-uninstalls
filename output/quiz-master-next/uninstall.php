<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'logic_rules_quiz_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'quiz_featured_image_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qmn_failed_alter_table_queries');
delete_site_option('qmn_failed_alter_table_queries');
delete_option('qsm_check_database_structure');
delete_site_option('qsm_check_database_structure');
delete_option('qmn-settings');
delete_site_option('qmn-settings');
delete_option('qsm_multiple_category_enabled');
delete_site_option('qsm_multiple_category_enabled');
delete_option('qmn_original_version');
delete_site_option('qmn_original_version');
delete_option('qsm_update_db_column');
delete_site_option('qsm_update_db_column');
delete_option('qsm_update_result_db_column');
delete_site_option('qsm_update_result_db_column');
delete_option('qsm_update_quiz_db_column');
delete_site_option('qsm_update_quiz_db_column');
delete_option('qsm_update_result_db_column_datatype');
delete_site_option('qsm_update_result_db_column_datatype');
delete_option('qsm_add_new_column_question_table_table');
delete_site_option('qsm_add_new_column_question_table_table');
delete_option('qsm_update_result_db_column_page_url');
delete_site_option('qsm_update_result_db_column_page_url');
delete_option('qsm_update_result_db_column_page_name');
delete_site_option('qsm_update_result_db_column_page_name');
delete_option('qsm_update_db_column_charset_utf8mb4_unicode_ci');
delete_site_option('qsm_update_db_column_charset_utf8mb4_unicode_ci');
delete_option('qsm_change_the_post_type');
delete_site_option('qsm_change_the_post_type');
delete_option('qsm_upated_question_type_val');
delete_site_option('qsm_upated_question_type_val');
delete_option('qsm_addon_advanced_timer_settings');
delete_site_option('qsm_addon_advanced_timer_settings');
delete_option('qsm-quiz-settings');
delete_site_option('qsm-quiz-settings');
delete_option('mlw_advert_shows');
delete_site_option('mlw_advert_shows');
delete_option('qmn_quiz_taken_cnt');
delete_site_option('qmn_quiz_taken_cnt');
delete_option('admin_email ');
delete_site_option('admin_email ');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('qmn_review_message_trigger');
delete_site_option('qmn_review_message_trigger');
delete_option('mlw_quiz_master_version');
delete_site_option('mlw_quiz_master_version');
delete_option('fixed_duplicate_questions');
delete_site_option('fixed_duplicate_questions');
delete_option('fix_deleted_quiz_posts');
delete_site_option('fix_deleted_quiz_posts');
delete_option('qmn_tracker_last_time');
delete_site_option('qmn_tracker_last_time');
delete_option('qmn-tracking-notice');
delete_site_option('qmn-tracking-notice');

// Delete Transients
delete_transient('qmn_contributors');
delete_site_transient('qmn_contributors');
delete_transient('qsm_admin_dashboard_data');
delete_site_transient('qsm_admin_dashboard_data');
delete_transient('qsm_ads_data');
delete_site_transient('qsm_ads_data');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_qsm_already_sent_emails_%', '_site_transient_qsm_already_sent_emails_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'quiz_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'quiz_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'quiz_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'quiz_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'results_screen_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'results_screen_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'results_screen_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'results_screen_option' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qsm_show_disabled_contact_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qsm_show_disabled_contact_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qsm_show_disabled_contact_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qsm_show_disabled_contact_fields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nonce_validation_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nonce_validation_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nonce_validation_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nonce_validation_notification' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_qmn_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_qmn_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_qmn_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_qmn_log_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

