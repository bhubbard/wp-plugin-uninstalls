<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enzuzo_cookie_consent_uuid');
delete_site_option('enzuzo_cookie_consent_uuid');
delete_option('enzuzo_cookie_consent_enabled');
delete_site_option('enzuzo_cookie_consent_enabled');
delete_option('enzuzo_cookie_consent_auto_blocking');
delete_site_option('enzuzo_cookie_consent_auto_blocking');
delete_option('enzuzo_cookie_consent_enable_wp_consent');
delete_site_option('enzuzo_cookie_consent_enable_wp_consent');
delete_option('enzuzo_cookie_consent_prefix_code');
delete_site_option('enzuzo_cookie_consent_prefix_code');

