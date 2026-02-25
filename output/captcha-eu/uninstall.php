<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('captcha_at_plugin');
delete_site_option('captcha_at_plugin');
delete_option('captcha_at_fragprotect');
delete_site_option('captcha_at_fragprotect');
delete_option('captcha_at_proxy_enabled');
delete_site_option('captcha_at_proxy_enabled');
delete_option('captcha_at_public_key');
delete_site_option('captcha_at_public_key');
delete_option('captcha_at_host');
delete_site_option('captcha_at_host');
delete_option('captcha_at_rest_key');
delete_site_option('captcha_at_rest_key');
delete_option('captcha_at_proxy_sdkjs_content');
delete_site_option('captcha_at_proxy_sdkjs_content');
delete_option('captcha_at_proxy_sdkjs_updated_at');
delete_site_option('captcha_at_proxy_sdkjs_updated_at');
delete_option('captcha_at_errors_catched');
delete_site_option('captcha_at_errors_catched');
delete_option('captcha_at_version_sdk');
delete_site_option('captcha_at_version_sdk');
delete_option('captcha_at_update_available');
delete_site_option('captcha_at_update_available');
delete_option('captcha_at_update_version');
delete_site_option('captcha_at_update_version');
delete_option('captcha_at_update_url');
delete_site_option('captcha_at_update_url');

// Delete Transients
delete_transient('captcha-at-notice-activation');
delete_site_transient('captcha-at-notice-activation');

// Clear Cron Jobs
wp_clear_scheduled_hook('captcha_at_sched_sdk_version');

