<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdm_wpma_settings');
delete_site_option('wdm_wpma_settings');
delete_option('wdm_wpma_version');
delete_site_option('wdm_wpma_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_mail_queue_hook');

