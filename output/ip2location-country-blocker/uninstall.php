<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ip2location_country_blocker_private_key');
delete_site_option('ip2location_country_blocker_private_key');
delete_option('ip2location_country_blocker_access_email_notification');
delete_site_option('ip2location_country_blocker_access_email_notification');
delete_option('ip2location_country_blocker_api_key');
delete_site_option('ip2location_country_blocker_api_key');
delete_option('ip2location_country_blocker_backend_auto_block_threshold');
delete_site_option('ip2location_country_blocker_backend_auto_block_threshold');
delete_option('ip2location_country_blocker_backend_banlist');
delete_site_option('ip2location_country_blocker_backend_banlist');
delete_option('ip2location_country_blocker_backend_block_mode');
delete_site_option('ip2location_country_blocker_backend_block_mode');
delete_option('ip2location_country_blocker_backend_block_proxy');
delete_site_option('ip2location_country_blocker_backend_block_proxy');
delete_option('ip2location_country_blocker_backend_bots_list');
delete_site_option('ip2location_country_blocker_backend_bots_list');
delete_option('ip2location_country_blocker_backend_enabled');
delete_site_option('ip2location_country_blocker_backend_enabled');
delete_option('ip2location_country_blocker_backend_error_page');
delete_site_option('ip2location_country_blocker_backend_error_page');
delete_option('ip2location_country_blocker_backend_ip_blacklist');
delete_site_option('ip2location_country_blocker_backend_ip_blacklist');
delete_option('ip2location_country_blocker_backend_ip_whitelist');
delete_site_option('ip2location_country_blocker_backend_ip_whitelist');
delete_option('ip2location_country_blocker_backend_option');
delete_site_option('ip2location_country_blocker_backend_option');
delete_option('ip2location_country_blocker_backend_redirect_url');
delete_site_option('ip2location_country_blocker_backend_redirect_url');
delete_option('ip2location_country_blocker_backend_skip_bots');
delete_site_option('ip2location_country_blocker_backend_skip_bots');
delete_option('ip2location_country_blocker_bypass_code');
delete_site_option('ip2location_country_blocker_bypass_code');
delete_option('ip2location_country_blocker_database');
delete_site_option('ip2location_country_blocker_database');
delete_option('ip2location_country_blocker_debug_log_enabled');
delete_site_option('ip2location_country_blocker_debug_log_enabled');
delete_option('ip2location_country_blocker_detect_forwarder_ip');
delete_site_option('ip2location_country_blocker_detect_forwarder_ip');
delete_option('ip2location_country_blocker_download_ipv4_only');
delete_site_option('ip2location_country_blocker_download_ipv4_only');
delete_option('ip2location_country_blocker_email_notification');
delete_site_option('ip2location_country_blocker_email_notification');
delete_option('ip2location_country_blocker_frontend_auto_block_threshold');
delete_site_option('ip2location_country_blocker_frontend_auto_block_threshold');
delete_option('ip2location_country_blocker_frontend_banlist');
delete_site_option('ip2location_country_blocker_frontend_banlist');
delete_option('ip2location_country_blocker_frontend_block_mode');
delete_site_option('ip2location_country_blocker_frontend_block_mode');
delete_option('ip2location_country_blocker_frontend_block_proxy');
delete_site_option('ip2location_country_blocker_frontend_block_proxy');
delete_option('ip2location_country_blocker_frontend_block_proxy_type');
delete_site_option('ip2location_country_blocker_frontend_block_proxy_type');
delete_option('ip2location_country_blocker_frontend_bots_list');
delete_site_option('ip2location_country_blocker_frontend_bots_list');
delete_option('ip2location_country_blocker_frontend_enabled');
delete_site_option('ip2location_country_blocker_frontend_enabled');
delete_option('ip2location_country_blocker_frontend_error_page');
delete_site_option('ip2location_country_blocker_frontend_error_page');
delete_option('ip2location_country_blocker_frontend_ip_blacklist');
delete_site_option('ip2location_country_blocker_frontend_ip_blacklist');
delete_option('ip2location_country_blocker_frontend_ip_whitelist');
delete_site_option('ip2location_country_blocker_frontend_ip_whitelist');
delete_option('ip2location_country_blocker_frontend_option');
delete_site_option('ip2location_country_blocker_frontend_option');
delete_option('ip2location_country_blocker_frontend_redirect_url');
delete_site_option('ip2location_country_blocker_frontend_redirect_url');
delete_option('ip2location_country_blocker_frontend_skip_bots');
delete_site_option('ip2location_country_blocker_frontend_skip_bots');
delete_option('ip2location_country_blocker_frontend_whitelist_logged_user');
delete_site_option('ip2location_country_blocker_frontend_whitelist_logged_user');
delete_option('ip2location_country_blocker_log_enabled');
delete_site_option('ip2location_country_blocker_log_enabled');
delete_option('ip2location_country_blocker_lookup_mode');
delete_site_option('ip2location_country_blocker_lookup_mode');
delete_option('ip2location_country_blocker_px_api_key');
delete_site_option('ip2location_country_blocker_px_api_key');
delete_option('ip2location_country_blocker_px_database');
delete_site_option('ip2location_country_blocker_px_database');
delete_option('ip2location_country_blocker_px_lookup_mode');
delete_site_option('ip2location_country_blocker_px_lookup_mode');
delete_option('ip2location_country_blocker_real_ip_header');
delete_site_option('ip2location_country_blocker_real_ip_header');
delete_option('ip2location_country_blocker_session_message');
delete_site_option('ip2location_country_blocker_session_message');
delete_option('ip2location_country_blocker_token');
delete_site_option('ip2location_country_blocker_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ip2location_country_blocker_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ip2location_country_blocker_backend_block_proxy_type');
delete_site_option('ip2location_country_blocker_backend_block_proxy_type');

// Clear Cron Jobs
wp_clear_scheduled_hook('ip2location_country_blocker_hourly_event');

