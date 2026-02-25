<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginpress_pro_addons');
delete_site_option('loginpress_pro_addons');
delete_option('loginpress_customization');
delete_site_option('loginpress_customization');
delete_option('loginpress_setting');
delete_site_option('loginpress_setting');
delete_option('customize_presets_settings');
delete_site_option('customize_presets_settings');
delete_option('loginpress_limit_login_attempts');
delete_site_option('loginpress_limit_login_attempts');
delete_option('wpb_sdk_loginpress');
delete_site_option('wpb_sdk_loginpress');
delete_option('loginpress_captcha_settings');
delete_site_option('loginpress_captcha_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('loginpress_hide_login');
delete_site_option('loginpress_hide_login');
delete_option('loginpress_social_logins');
delete_site_option('loginpress_social_logins');
delete_option('loginpress_active_time');
delete_site_option('loginpress_active_time');
delete_option('loginpress_review_dismiss');
delete_site_option('loginpress_review_dismiss');
delete_option('loginpress_addon_dismiss_1');
delete_site_option('loginpress_addon_dismiss_1');
delete_option('loginpress_addon_active_time');
delete_site_option('loginpress_addon_active_time');
delete_option('loginpress_friday_sale_active_time');
delete_site_option('loginpress_friday_sale_active_time');
delete_option('loginpress_friday_21_sale_dismiss');
delete_site_option('loginpress_friday_21_sale_dismiss');
delete_option('loginpress_appsumo_active_time');
delete_site_option('loginpress_appsumo_active_time');
delete_option('loginpress_appsumo_dismiss');
delete_site_option('loginpress_appsumo_dismiss');
delete_option('_loginpress_optin');
delete_site_option('_loginpress_optin');
delete_option('webarx_mv_wp_login');
delete_site_option('webarx_mv_wp_login');
delete_option('loginpress_pro_license_key');
delete_site_option('loginpress_pro_license_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpb_sdk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rdn_fetch_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpb_sdk_module_id');
delete_site_option('wpb_sdk_module_id');
delete_option('wpb_sdk_module_slug');
delete_site_option('wpb_sdk_module_slug');
delete_option('wpb_api_cache');
delete_site_option('wpb_api_cache');

// Delete Transients
delete_transient('loginpress_api_addons');
delete_site_transient('loginpress_api_addons');
delete_transient('loginpress_pro_pop_up');
delete_site_transient('loginpress_pro_pop_up');
delete_transient('loginpress_rdn_fetch_notifications');
delete_site_transient('loginpress_rdn_fetch_notifications');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rn_last_notification_%', '_site_transient_rn_last_notification_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'default_password_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'default_password_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'default_password_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'default_password_nag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'loginpress_password_reset_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'loginpress_password_reset_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'loginpress_password_reset_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'loginpress_password_reset_limit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rn_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rn_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rn_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rn_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lp_privacy_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lp_privacy_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lp_privacy_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lp_privacy_policy' ) );

