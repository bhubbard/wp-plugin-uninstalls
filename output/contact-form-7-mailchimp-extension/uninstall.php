<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cf7_mch_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('chimpmatic_license_status');
delete_site_option('chimpmatic_license_status');
delete_option('chimpmatic-update');
delete_site_option('chimpmatic-update');
delete_option('cmatic_log_on');
delete_site_option('cmatic_log_on');
delete_option('cmatic_do_activation_redirect');
delete_site_option('cmatic_do_activation_redirect');
delete_option('cmatic_news_retry_count');
delete_site_option('cmatic_news_retry_count');
delete_option('csyncr_last_weekly_run');
delete_site_option('csyncr_last_weekly_run');
delete_option('mc4wp');
delete_site_option('mc4wp');
delete_option('yikes-mc-api-key');
delete_site_option('yikes-mc-api-key');
delete_option('yikes-easy-mailchimp-extender-api-key');
delete_site_option('yikes-easy-mailchimp-extender-api-key');
delete_option('mailchimp-woocommerce');
delete_site_option('mailchimp-woocommerce');
delete_option('mc4wp_top_bar');
delete_site_option('mc4wp_top_bar');
delete_option('chimpmatic_license_activation');
delete_site_option('chimpmatic_license_activation');
delete_option('cmatic_license_instance');
delete_site_option('cmatic_license_instance');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');
delete_option('auto_update_core');
delete_site_option('auto_update_core');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('cmatic');
delete_site_option('cmatic');
delete_option('mce_conten_panel_welcome');
delete_site_option('mce_conten_panel_welcome');
delete_option('mce_loyalty');
delete_site_option('mce_loyalty');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('cmatic_weekly_telemetry');
wp_clear_scheduled_hook('cmatic_metrics_heartbeat');
wp_clear_scheduled_hook('cmatic_daily_cron');
wp_clear_scheduled_hook('csyncr_weekly_telemetry');
wp_clear_scheduled_hook('csyncr_metrics_heartbeat');

