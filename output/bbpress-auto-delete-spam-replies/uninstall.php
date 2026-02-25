<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bbp_delete_spam_hours_old');
delete_site_option('_bbp_delete_spam_hours_old');

// Clear Cron Jobs
wp_clear_scheduled_hook('bbpress_autodelete_psuedo_cron');

