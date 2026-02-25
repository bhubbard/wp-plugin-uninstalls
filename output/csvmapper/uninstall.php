<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csvm_enable_cron_task');
delete_site_option('csvm_enable_cron_task');
delete_option('csvm_cron_interval');
delete_site_option('csvm_cron_interval');
delete_option('csvm_settings');
delete_site_option('csvm_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('csvm_import_lookout');

