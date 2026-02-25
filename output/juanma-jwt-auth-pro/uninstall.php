<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jwt_auth_pro_settings');
delete_site_option('jwt_auth_pro_settings');
delete_option('jwt_auth_pro_general_settings');
delete_site_option('jwt_auth_pro_general_settings');
delete_option('jwt_auth_cookie_config');
delete_site_option('jwt_auth_cookie_config');

// Delete Transients
delete_transient('jwt_auth_pro_version');
delete_site_transient('jwt_auth_pro_version');
delete_transient('jwt_auth_pro_deactivation_notice');
delete_site_transient('jwt_auth_pro_deactivation_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('jwt_auth_pro_clean_expired_tokens');

