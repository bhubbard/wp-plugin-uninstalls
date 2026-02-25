<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookiefy_consent_logs');
delete_site_option('cookiefy_consent_logs');
delete_option('cookiefy_domain_id');
delete_site_option('cookiefy_domain_id');
delete_option('cookiefy_ui_theme');
delete_site_option('cookiefy_ui_theme');
delete_option('cookiefy_core_mode');
delete_site_option('cookiefy_core_mode');
delete_option('cookiefy_enabled');
delete_site_option('cookiefy_enabled');
delete_option('cookiefy_custom_config');
delete_site_option('cookiefy_custom_config');

