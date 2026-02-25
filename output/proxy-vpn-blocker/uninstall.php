<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pvb_setup_complete');
delete_site_option('pvb_setup_complete');
delete_option('pvb_enable_debugging');
delete_site_option('pvb_enable_debugging');
delete_option('pvb_defined_protected_paths');
delete_site_option('pvb_defined_protected_paths');
delete_option('pvb_option_ip_header_type');
delete_site_option('pvb_option_ip_header_type');
delete_option('proxy_vpn_blocker_version');
delete_site_option('proxy_vpn_blocker_version');
delete_option('proxy_vpn_blocker_proxycheck_api_version');
delete_site_option('proxy_vpn_blocker_proxycheck_api_version');
delete_option('pvb_proxycheckio_current_key');
delete_site_option('pvb_proxycheckio_current_key');
delete_option('pvb_proxycheckio_API_Key_field');
delete_site_option('pvb_proxycheckio_API_Key_field');
delete_option('pvb_proxycheckio_custom_blocked_page');
delete_site_option('pvb_proxycheckio_custom_blocked_page');
delete_option('pvb_proxycheckio_blocked_select_pages_field');
delete_site_option('pvb_proxycheckio_blocked_select_pages_field');
delete_option('pvb_proxycheckio_API_Key_invalid');
delete_site_option('pvb_proxycheckio_API_Key_invalid');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_pvb_activation_redirect' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pvb_proxycheckio_dummy_data');
delete_site_option('pvb_proxycheckio_dummy_data');
delete_option('pvb_db_version');
delete_site_option('pvb_db_version');
delete_option('pvb_proxycheckio_blocked_select_posts_field');
delete_site_option('pvb_proxycheckio_blocked_select_posts_field');
delete_option('pvb_proxycheckio_master_activation');
delete_site_option('pvb_proxycheckio_master_activation');
delete_option('pvb_proxycheckio_VPN_select_box');
delete_site_option('pvb_proxycheckio_VPN_select_box');
delete_option('pvb_proxycheckio_TAG_select_box');
delete_site_option('pvb_proxycheckio_TAG_select_box');
delete_option('pvb_proxycheckio_Custom_TAG_field');
delete_site_option('pvb_proxycheckio_Custom_TAG_field');
delete_option('pvb_proxycheckio_denied_access_field');
delete_site_option('pvb_proxycheckio_denied_access_field');
delete_option('pvb_proxycheckio_Days_Selector');
delete_site_option('pvb_proxycheckio_Days_Selector');
delete_option('pvb_proxycheckio_all_pages_activation');
delete_site_option('pvb_proxycheckio_all_pages_activation');
delete_option('pvb_proxycheckio_blocked_countries_field');
delete_site_option('pvb_proxycheckio_blocked_countries_field');
delete_option('pvb_proxycheckio_whitelist_countries_select_box');
delete_site_option('pvb_proxycheckio_whitelist_countries_select_box');
delete_option('pvb_proxycheckio_good_ip_cache_time');
delete_site_option('pvb_proxycheckio_good_ip_cache_time');
delete_option('pvb_proxycheckio_opt_redirect_url');
delete_site_option('pvb_proxycheckio_opt_redirect_url');
delete_option('pvb_proxycheckio_redirect_bad_visitor');
delete_site_option('pvb_proxycheckio_redirect_bad_visitor');
delete_option('pvb_proxycheckio_Admin_Alert_Denied_Email');
delete_site_option('pvb_proxycheckio_Admin_Alert_Denied_Email');
delete_option('pvb_protect_login_authentication');
delete_site_option('pvb_protect_login_authentication');
delete_option('pvb_allow_staff_bypass');
delete_site_option('pvb_allow_staff_bypass');
delete_option('pvb_cache_buster');
delete_site_option('pvb_cache_buster');
delete_option('pvb_http_referrer_addresses');
delete_site_option('pvb_http_referrer_addresses');
delete_option('pvb_blocked_pages_ids_array');
delete_site_option('pvb_blocked_pages_ids_array');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('pvb_log_user_ip_select_box');
delete_site_option('pvb_log_user_ip_select_box');
delete_option('pvb_proxycheck_apikey_details');
delete_site_option('pvb_proxycheck_apikey_details');
delete_option('pvb_proxycheckio_risk_select_box');
delete_site_option('pvb_proxycheckio_risk_select_box');
delete_option('proxycheckio_max_riskscore_vpn');
delete_site_option('proxycheckio_max_riskscore_vpn');
delete_option('proxycheckio_max_riskscore_proxy');
delete_site_option('proxycheckio_max_riskscore_proxy');
delete_option('proxy_vpn_blocker_last_update');
delete_site_option('proxy_vpn_blocker_last_update');
delete_option('pvb_cors_integration');
delete_site_option('pvb_cors_integration');
delete_option('pvb_option_help_mode');
delete_site_option('pvb_option_help_mode');
delete_option('pvb_proxycheckio_max_riskscore_vpn');
delete_site_option('pvb_proxycheckio_max_riskscore_vpn');
delete_option('pvb_proxycheckio_max_riskscore_proxy');
delete_site_option('pvb_proxycheckio_max_riskscore_proxy');
delete_option('pvb_protected_paths');
delete_site_option('pvb_protected_paths');
delete_option('pvb_proxycheckio_HMAC_verification_key');
delete_site_option('pvb_proxycheckio_HMAC_verification_key');
delete_option('pvb_CORS_protect_on_webcache');
delete_site_option('pvb_CORS_protect_on_webcache');
delete_option('pvb_proxycheckio_CORS_public_key');
delete_site_option('pvb_proxycheckio_CORS_public_key');
delete_option('pvb_CORS_antiadblock');
delete_site_option('pvb_CORS_antiadblock');
delete_option('pvb_protect_default_login_page');
delete_site_option('pvb_protect_default_login_page');
delete_option('pvb_protect_comments');
delete_site_option('pvb_protect_comments');
delete_option('pvb_proxycheckio_CLOUDFLARE_select_box');
delete_site_option('pvb_proxycheckio_CLOUDFLARE_select_box');
delete_option('pvb_blocked_posts_array');
delete_site_option('pvb_blocked_posts_array');
delete_option('pvb_blocked_pages_array');
delete_site_option('pvb_blocked_pages_array');
delete_option('pvb_blocked_permalinks_array');
delete_site_option('pvb_blocked_permalinks_array');
delete_option('pvb_proxycheckio_detectiontype_vpn');
delete_site_option('pvb_proxycheckio_detectiontype_vpn');
delete_option('pvb_proxycheckio_detectiontype_proxy');
delete_site_option('pvb_proxycheckio_detectiontype_proxy');
delete_option('pvb_proxycheckio_detectiontype_compromised');
delete_site_option('pvb_proxycheckio_detectiontype_compromised');
delete_option('pvb_proxycheckio_detectiontype_tor');
delete_site_option('pvb_proxycheckio_detectiontype_tor');
delete_option('pvb_cleanup_on_uninstall');
delete_site_option('pvb_cleanup_on_uninstall');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_own_domain_added_', '_site_transient_%_own_domain_added_' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_own_domain_removed_', '_site_transient_%_own_domain_removed_' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_webcache_domains_added_', '_site_transient_%_webcache_domains_added_' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_webcache_domains_removed_', '_site_transient_%_webcache_domains_removed_' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pvb_review_stats');
delete_site_transient('pvb_review_stats');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pvb_admin_email_denied_timeout_%', '_site_transient_pvb_admin_email_denied_timeout_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pvb_db_upgrade_running');
delete_site_transient('pvb_db_upgrade_running');

// Clear Cron Jobs
wp_clear_scheduled_hook('delete_old_pvb_action_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pvb_checkbox_block_on_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pvb_checkbox_block_on_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pvb_checkbox_block_on_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pvb_checkbox_block_on_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'registration_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'registration_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'registration_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'registration_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'registration_ip_metrics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'registration_ip_metrics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'registration_ip_metrics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'registration_ip_metrics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login_ip_metrics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login_ip_metrics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login_ip_metrics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login_ip_metrics' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'signup_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'signup_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'signup_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'signup_ip' ) );

