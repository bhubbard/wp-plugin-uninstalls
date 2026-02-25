<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wa_general');
delete_site_option('wa_general');

// Clear Cron Jobs
wp_clear_scheduled_hook('webarchive_create_snapshot');

