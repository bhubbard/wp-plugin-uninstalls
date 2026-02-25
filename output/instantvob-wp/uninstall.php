<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('instantvob_api_url');
delete_site_option('instantvob_api_url');
delete_option('instantvob_api_key');
delete_site_option('instantvob_api_key');
delete_option('instantvob_notification_email');
delete_site_option('instantvob_notification_email');
delete_option('instantvob_cf_turnstile_secret');
delete_site_option('instantvob_cf_turnstile_secret');
delete_option('instantvob_cf_turnstile_sitekey');
delete_site_option('instantvob_cf_turnstile_sitekey');
delete_option('instantvob_show_branding');
delete_site_option('instantvob_show_branding');

