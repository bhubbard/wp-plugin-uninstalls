<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aio_login_limit_attempts_enable');
delete_site_option('aio_login_limit_attempts_enable');
delete_option('aio_login_pro__two_factor_auth_enable');
delete_site_option('aio_login_pro__two_factor_auth_enable');
delete_option('aio_login_block_ip_address_enable');
delete_site_option('aio_login_block_ip_address_enable');
delete_option('aio_login_user_enumeration_duration');
delete_site_option('aio_login_user_enumeration_duration');
delete_option('aio_login_user_enumeration_enable');
delete_site_option('aio_login_user_enumeration_enable');
delete_option('aio_login_user_enumeration_oembed');
delete_site_option('aio_login_user_enumeration_oembed');
delete_option('aio_login_user_enumeration_sitemaps');
delete_site_option('aio_login_user_enumeration_sitemaps');
delete_option('aio_login_user_enumeration_comments');
delete_site_option('aio_login_user_enumeration_comments');
delete_option('aio_login_user_enumeration_rest_api');
delete_site_option('aio_login_user_enumeration_rest_api');
delete_option('aio_login_user_enumeration_login_registration');
delete_site_option('aio_login_user_enumeration_login_registration');
delete_option('aio_login_user_enumeration_log');
delete_site_option('aio_login_user_enumeration_log');
delete_option('rwl_page');
delete_site_option('rwl_page');
delete_option('aio_login__cwpal_enable');
delete_site_option('aio_login__cwpal_enable');
delete_option('rwl_page_input');
delete_site_option('rwl_page_input');
delete_option('rwl_redirect_field');
delete_site_option('rwl_redirect_field');
delete_option('rwl_redirect');
delete_site_option('rwl_redirect');
delete_option('aio_login__version');
delete_site_option('aio_login__version');
delete_option('aio_login_change_login_url_enable');
delete_site_option('aio_login_change_login_url_enable');
delete_option('aio_login__update');
delete_site_option('aio_login__update');
delete_option('aio_login_limit_attempts_timeout');
delete_site_option('aio_login_limit_attempts_timeout');
delete_option('aio_login_configured_providers_list');
delete_site_option('aio_login_configured_providers_list');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('aio_login_google_recaptcha_enable');
delete_site_option('aio_login_google_recaptcha_enable');
delete_option('aio_login_google_recaptcha_version');
delete_site_option('aio_login_google_recaptcha_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_site_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_secret_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('aio_login_google_recaptcha_v2_theme');
delete_site_option('aio_login_google_recaptcha_v2_theme');
delete_option('aio_login_google_recaptcha_v3_threshold');
delete_site_option('aio_login_google_recaptcha_v3_threshold');
delete_option('aio_login__customization_templates');
delete_site_option('aio_login__customization_templates');
delete_option('aio_login_google_recaptcha_v2_site_key');
delete_site_option('aio_login_google_recaptcha_v2_site_key');
delete_option('aio_login_google_recaptcha_v2_secret_key');
delete_site_option('aio_login_google_recaptcha_v2_secret_key');
delete_option('aio_login_google_recaptcha_v3_site_key');
delete_site_option('aio_login_google_recaptcha_v3_site_key');
delete_option('aio_login_google_recaptcha_v3_secret_key');
delete_site_option('aio_login_google_recaptcha_v3_secret_key');
delete_option('aio_login_hcaptcha_enable');
delete_site_option('aio_login_hcaptcha_enable');
delete_option('aio_login_limit_attempts_maximum_attempts');
delete_site_option('aio_login_limit_attempts_maximum_attempts');
delete_option('aio_login_limit_attempts_lockout_message');
delete_site_option('aio_login_limit_attempts_lockout_message');
delete_option('aio_login_logo');
delete_site_option('aio_login_logo');
delete_option('aio_login_logo_url');
delete_site_option('aio_login_logo_url');
delete_option('aio_login_logo_width');
delete_site_option('aio_login_logo_width');
delete_option('aio_login_logo_height');
delete_site_option('aio_login_logo_height');
delete_option('aio_login_margin_bottom');
delete_site_option('aio_login_margin_bottom');
delete_option('aio_login_background_color');
delete_site_option('aio_login_background_color');
delete_option('aio_login_background_image');
delete_site_option('aio_login_background_image');
delete_option('aio_login_custom-css');
delete_site_option('aio_login_custom-css');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_aio_login__user_attempts_%', '_site_transient_aio_login__user_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

