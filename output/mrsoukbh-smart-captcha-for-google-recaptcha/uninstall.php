<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrsoukbh_smart_captcha_for_google_recaptcha_settings');
delete_site_option('mrsoukbh_smart_captcha_for_google_recaptcha_settings');
delete_option('mrsoukbh_smart_captcha_for_google_recaptcha_file_hashes');
delete_site_option('mrsoukbh_smart_captcha_for_google_recaptcha_file_hashes');

// Clear Cron Jobs
wp_clear_scheduled_hook('mrsoukbh_smart_captcha_for_google_recaptcha_daily_check');

