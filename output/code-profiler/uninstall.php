<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('code-profiler');
delete_site_option('code-profiler');
delete_option('ms_files_rewriting');
delete_site_option('ms_files_rewriting');

// Delete Transients
delete_transient('doing_cron');
delete_site_transient('doing_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('codeprofiler_wpcron');

