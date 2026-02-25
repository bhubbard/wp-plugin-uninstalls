<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrmrkdofa_cron_frequency');
delete_site_option('mrmrkdofa_cron_frequency');
delete_option('mrmrkdofa_sort_entries_by');
delete_site_option('mrmrkdofa_sort_entries_by');
delete_option('mrmrkdofa_entries_limit');
delete_site_option('mrmrkdofa_entries_limit');
delete_option('mrmrkdofa_show_post_type');
delete_site_option('mrmrkdofa_show_post_type');
delete_option('mrmrkdofa_word_count');
delete_site_option('mrmrkdofa_word_count');
delete_option('mrmrkdofa_site_description');
delete_site_option('mrmrkdofa_site_description');
delete_option('mrmrkdofa_excluded_ids');
delete_site_option('mrmrkdofa_excluded_ids');
delete_option('mrmrkdofa_excluded_categories');
delete_site_option('mrmrkdofa_excluded_categories');
delete_option('mrmrkdofa_excluded_tags');
delete_site_option('mrmrkdofa_excluded_tags');
delete_option('mrmrkdofa_generate_md_html');
delete_site_option('mrmrkdofa_generate_md_html');
delete_option('mrmrkdofa_daily_time');
delete_site_option('mrmrkdofa_daily_time');
delete_option('mrmrkdofa_hourly_minute');
delete_site_option('mrmrkdofa_hourly_minute');
delete_option('mrmrkdofa_weekly_day');
delete_site_option('mrmrkdofa_weekly_day');
delete_option('mrmrkdofa_weekly_time');
delete_site_option('mrmrkdofa_weekly_time');
delete_option('mrmrkdofa_monthly_day');
delete_site_option('mrmrkdofa_monthly_day');
delete_option('mrmrkdofa_monthly_time');
delete_site_option('mrmrkdofa_monthly_time');

// Delete Transients
delete_transient('mrmrkdofa_md_html_removed');
delete_site_transient('mrmrkdofa_md_html_removed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mrmrkdofa_md_%', '_site_transient_mrmrkdofa_md_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('mrmrkdofa_md_home');
delete_site_transient('mrmrkdofa_md_home');

// Clear Cron Jobs
wp_clear_scheduled_hook('mrmrkdofa_generate_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

