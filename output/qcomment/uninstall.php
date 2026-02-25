<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qc_app_key');
delete_site_option('qc_app_key');
delete_option('qc_subject');
delete_site_option('qc_subject');
delete_option('qc_load_comments');
delete_site_option('qc_load_comments');
delete_option('qc_buy_for_all');
delete_site_option('qc_buy_for_all');
delete_option('qc_tariff_id');
delete_site_option('qc_tariff_id');
delete_option('qc_task');
delete_site_option('qc_task');
delete_option('qc_group_id');
delete_site_option('qc_group_id');
delete_option('qc_language');
delete_site_option('qc_language');
delete_option('qc_min_rating');
delete_site_option('qc_min_rating');
delete_option('qc_team_id');
delete_site_option('qc_team_id');
delete_option('qc_comment_configs');
delete_site_option('qc_comment_configs');
delete_option('qc_start_time');
delete_site_option('qc_start_time');
delete_option('qc_end_time');
delete_site_option('qc_end_time');
delete_option('qc_limit');
delete_site_option('qc_limit');
delete_option('qc_cnt_day_limit');
delete_site_option('qc_cnt_day_limit');
delete_option('qc_min_day_limit');
delete_site_option('qc_min_day_limit');
delete_option('qc_max_day_limit');
delete_site_option('qc_max_day_limit');
delete_option('qc_delay_from');
delete_site_option('qc_delay_from');
delete_option('qc_delay_to');
delete_site_option('qc_delay_to');
delete_option('qc_limit_hour');
delete_site_option('qc_limit_hour');
delete_option('qc_limit_url');
delete_site_option('qc_limit_url');
delete_option('qc_limit_url_day');
delete_site_option('qc_limit_url_day');
delete_option('qc_limit_author');
delete_site_option('qc_limit_author');
delete_option('qc_limit_author_day');
delete_site_option('qc_limit_author_day');
delete_option('qc_max_turn');
delete_site_option('qc_max_turn');
delete_option('qc_stop_words');
delete_site_option('qc_stop_words');
delete_option('qc_pay');
delete_site_option('qc_pay');
delete_option('qc_export_comments');
delete_site_option('qc_export_comments');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('tariff');
delete_site_transient('tariff');

// Clear Cron Jobs
wp_clear_scheduled_hook('qcomment_check_comments');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcomment_project_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcomment_project_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcomment_project_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcomment_project_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_qcomment_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_qcomment_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_qcomment_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_qcomment_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcomment_bought_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcomment_bought_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcomment_bought_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcomment_bought_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qcomment_auto_check_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qcomment_auto_check_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qcomment_auto_check_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qcomment_auto_check_comments' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qcomment_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qcomment_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qcomment_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qcomment_login' ) );

