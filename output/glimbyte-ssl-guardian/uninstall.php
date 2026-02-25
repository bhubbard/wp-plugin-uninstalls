<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'glimbyte_ssl_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('glimbyte_ssl_https_enabled');
delete_site_option('glimbyte_ssl_https_enabled');
delete_option('glimbyte_ssl_redirect_type');
delete_site_option('glimbyte_ssl_redirect_type');
delete_option('glimbyte_ssl_force_all');
delete_site_option('glimbyte_ssl_force_all');
delete_option('glimbyte_ssl_excluded_urls');
delete_site_option('glimbyte_ssl_excluded_urls');
delete_option('glimbyte_ssl_mixed_content_fix_enabled');
delete_site_option('glimbyte_ssl_mixed_content_fix_enabled');
delete_option('glimbyte_ssl_mixed_content_method');
delete_site_option('glimbyte_ssl_mixed_content_method');
delete_option('glimbyte_ssl_cert_alert_enabled');
delete_site_option('glimbyte_ssl_cert_alert_enabled');
delete_option('glimbyte_ssl_cert_alert_days');
delete_site_option('glimbyte_ssl_cert_alert_days');
delete_option('glimbyte_ssl_cert_alert_email');
delete_site_option('glimbyte_ssl_cert_alert_email');
delete_option('glimbyte_ssl_hsts_enabled');
delete_site_option('glimbyte_ssl_hsts_enabled');
delete_option('glimbyte_ssl_hsts_max_age');
delete_site_option('glimbyte_ssl_hsts_max_age');
delete_option('glimbyte_ssl_hsts_subdomains');
delete_site_option('glimbyte_ssl_hsts_subdomains');
delete_option('glimbyte_ssl_hsts_preload');
delete_site_option('glimbyte_ssl_hsts_preload');
delete_option('glimbyte_ssl_debug_mode');
delete_site_option('glimbyte_ssl_debug_mode');
delete_option('glimbyte_ssl_logs');
delete_site_option('glimbyte_ssl_logs');
delete_option('glimbyte_ssl_network_force_https');
delete_site_option('glimbyte_ssl_network_force_https');
delete_option('glimbyte_ssl_allow_site_override');
delete_site_option('glimbyte_ssl_allow_site_override');

// Delete Transients
delete_transient('glimbyte_ssl_scan_results');
delete_site_transient('glimbyte_ssl_scan_results');
delete_transient('glimbyte_ssl_admin_notice');
delete_site_transient('glimbyte_ssl_admin_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('glimbyte_ssl_check_certificate');

