<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('banhammer_armory');
delete_site_option('banhammer_armory');
delete_option('banhammer_tower');
delete_site_option('banhammer_tower');
delete_option('banhammer_settings');
delete_site_option('banhammer_settings');
delete_option('banhammer_secret_key');
delete_site_option('banhammer_secret_key');
delete_option('banhammer-dismiss-notice');
delete_site_option('banhammer-dismiss-notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('banhammer_cron_reset');

