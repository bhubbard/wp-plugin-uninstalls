<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wdesk_name');
delete_site_option('wdesk_name');
delete_option('wdesk_sender');
delete_site_option('wdesk_sender');
delete_option('wdesk_url');
delete_site_option('wdesk_url');
delete_option('wdesk_date_format');
delete_site_option('wdesk_date_format');
delete_option('wdesk_max_subject');
delete_site_option('wdesk_max_subject');
delete_option('wdesk_max_thread');
delete_site_option('wdesk_max_thread');

// Clear Cron Jobs
wp_clear_scheduled_hook('wdesk_cron_hook');

