<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bm_contributor_notice');
delete_site_option('bm_contributor_notice');
delete_option('bm_remote_contributors');
delete_site_option('bm_remote_contributors');
delete_option('lotf_cleanup');
delete_site_option('lotf_cleanup');

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_get_remote_contributors');

