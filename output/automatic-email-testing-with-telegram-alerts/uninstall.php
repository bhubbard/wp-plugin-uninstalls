<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aetwtaha4cca_email_address');
delete_site_option('aetwtaha4cca_email_address');
delete_option('aetwtaha4cca_telegram_bot_id');
delete_site_option('aetwtaha4cca_telegram_bot_id');
delete_option('aetwtaha4cca_telegram_chat_id');
delete_site_option('aetwtaha4cca_telegram_chat_id');
delete_option('aetwtaha4cca_start_time');
delete_site_option('aetwtaha4cca_start_time');

// Delete Transients
delete_transient('aetwtaha4cca_email_scheduler_activated');
delete_site_transient('aetwtaha4cca_email_scheduler_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('aetwtaha4cca_send_email_event');

