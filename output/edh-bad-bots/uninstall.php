<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edhbb_enable_htaccess_blocking');
delete_site_option('edhbb_enable_htaccess_blocking');
delete_option('edhbb_block_duration_days');
delete_site_option('edhbb_block_duration_days');

// Delete Transients
delete_transient('edhbb_debug_info');
delete_site_transient('edhbb_debug_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('edhbb_update_hostnames_cron');

