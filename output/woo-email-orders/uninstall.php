<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_email_digest_intro_text');
delete_site_option('wc_settings_email_digest_intro_text');
delete_option('wc_settings_email_digest_recipient');
delete_site_option('wc_settings_email_digest_recipient');

// Clear Cron Jobs
wp_clear_scheduled_hook('woocommerce_email_order_cron');

