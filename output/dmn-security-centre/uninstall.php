<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dmnsc_url');
delete_site_option('dmnsc_url');

// Clear Cron Jobs
wp_clear_scheduled_hook('dmnsc_update_wordfence_allowlist_daily');

