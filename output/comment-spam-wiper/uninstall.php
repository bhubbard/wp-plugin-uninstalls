<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csw_api_key');
delete_site_option('csw_api_key');
delete_option('csw_spam_count');
delete_site_option('csw_spam_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('csw_scheduled_delete');

