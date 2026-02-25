<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spl_license_return');
delete_site_option('spl_license_return');
delete_option('stylishpl_license_key');
delete_site_option('stylishpl_license_key');
delete_option('spl_extra_settings');
delete_site_option('spl_extra_settings');
delete_option('spllk_opt');
delete_site_option('spllk_opt');
delete_option('act_ser_conn_refused');
delete_site_option('act_ser_conn_refused');
delete_option('spl_save_count');
delete_site_option('spl_save_count');
delete_option('spl_feedback_invoke');
delete_site_option('spl_feedback_invoke');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'spl_cats_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('df_spl_emailsender');
delete_site_option('df_spl_emailsender');
delete_option('df_spl_notifications');
delete_site_option('df_spl_notifications');
delete_option('stylish_price_list_version');
delete_site_option('stylish_price_list_version');
delete_option('googlefonts_options');
delete_site_option('googlefonts_options');
delete_option('wp_google_fonts_global_notification');
delete_site_option('wp_google_fonts_global_notification');

// Clear Cron Jobs
wp_clear_scheduled_hook('spl_stats_event');

