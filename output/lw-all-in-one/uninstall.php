<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lw_all_in_one');
delete_site_option('lw_all_in_one');
delete_option('lw_all_in_one_version');
delete_site_option('lw_all_in_one_version');
delete_option('lw_all_in_one_privacy_pages');
delete_site_option('lw_all_in_one_privacy_pages');
delete_option('gadwp_options');
delete_site_option('gadwp_options');
delete_option('gadwp_redeemed_code');
delete_site_option('gadwp_redeemed_code');
delete_option('exactmetrics_tracking_notice');
delete_site_option('exactmetrics_tracking_notice');
delete_option('exactmetrics_usage_tracking_last_checkin');
delete_site_option('exactmetrics_usage_tracking_last_checkin');
delete_option('exactmetrics_usage_tracking_config');
delete_site_option('exactmetrics_usage_tracking_config');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_privacy_pages' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wim_activation_status');
delete_site_option('wim_activation_status');
delete_option('web-instant-messenger');
delete_site_option('web-instant-messenger');
delete_option('italy_cookie_choices');
delete_site_option('italy_cookie_choices');
delete_option('WpFastestCacheExclude');
delete_site_option('WpFastestCacheExclude');
delete_option('wpcf7');
delete_site_option('wpcf7');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('lw_all_in_one_ga_custom_events');
delete_site_option('lw_all_in_one_ga_custom_events');
delete_option('lw_all_in_one_purified_css');
delete_site_option('lw_all_in_one_purified_css');

// Clear Cron Jobs
wp_clear_scheduled_hook('lw_all_in_one_data_retention');
wp_clear_scheduled_hook('lw_all_in_one_cf7_sync');
wp_clear_scheduled_hook('exactmetrics_usage_tracking_cron');
wp_clear_scheduled_hook('lw_all_in_one_single_event');

