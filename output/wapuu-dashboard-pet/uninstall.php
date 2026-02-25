<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wapapostnag');
delete_site_option('wapapostnag');
delete_option('wapacomnag');
delete_site_option('wapacomnag');
delete_option('wapaloc');
delete_site_option('wapaloc');
delete_option('wapaemail');
delete_site_option('wapaemail');
delete_option('dismissed_update_core');
delete_site_option('dismissed_update_core');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');

// Clear Cron Jobs
wp_clear_scheduled_hook('WDPet_Daily');
wp_clear_scheduled_hook('WDPet_Weekly');

