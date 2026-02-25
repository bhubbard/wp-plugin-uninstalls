<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('auto_update_themes');
delete_site_option('auto_update_themes');
delete_option('auto_update_core_dev');
delete_site_option('auto_update_core_dev');
delete_option('auto_update_core_minor');
delete_site_option('auto_update_core_minor');
delete_option('auto_update_core_major');
delete_site_option('auto_update_core_major');
delete_option('cloudseca_plugin_options');
delete_site_option('cloudseca_plugin_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('cloudseca_cron_security_check');

