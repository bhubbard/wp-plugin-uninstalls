<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_gdpr_cookies_content_settings');
delete_site_option('simple_gdpr_cookies_content_settings');
delete_option('simple_gdpr_cookies_modal_settings');
delete_site_option('simple_gdpr_cookies_modal_settings');
delete_option('simple_gdpr_cookies_cookie_settings');
delete_site_option('simple_gdpr_cookies_cookie_settings');

