<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmaupd_settings_all_options');
delete_site_option('tmaupd_settings_all_options');
delete_option('tmaupd_plugin_mode_radio');
delete_site_option('tmaupd_plugin_mode_radio');
delete_option('tmaupd_post_types_check');
delete_site_option('tmaupd_post_types_check');
delete_option('tmaupd_post_dates_update');
delete_site_option('tmaupd_post_dates_update');
delete_option('tmaupd_manual_date');
delete_site_option('tmaupd_manual_date');
delete_option('tmaupd_auto_mode_period');
delete_site_option('tmaupd_auto_mode_period');
delete_option('tmaupd_keep_log');
delete_site_option('tmaupd_keep_log');
delete_option('tmaupd_post_filter_mode');
delete_site_option('tmaupd_post_filter_mode');
delete_option('tmaupd_post_filter_mode_status');
delete_site_option('tmaupd_post_filter_mode_status');
delete_option('tmaupd_filter_ind_pid');
delete_site_option('tmaupd_filter_ind_pid');
delete_option('tmaupd_filter_tax_terms');
delete_site_option('tmaupd_filter_tax_terms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tmaupd_cpt_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tmaupd_manual_datetime');
delete_site_option('tmaupd_manual_datetime');
delete_option('tmaupd_auto_mode_freq');
delete_site_option('tmaupd_auto_mode_freq');
delete_option('tmaupd_auto_mode_offset_mode');
delete_site_option('tmaupd_auto_mode_offset_mode');
delete_option('tmaupd_auto_mode_offset_value');
delete_site_option('tmaupd_auto_mode_offset_value');
delete_option('tmaupd_auto_mode_offset_unit');
delete_site_option('tmaupd_auto_mode_offset_unit');

// Clear Cron Jobs
wp_clear_scheduled_hook('tmaupd_cron_job_action');

