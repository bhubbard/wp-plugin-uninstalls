<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Kloudymail');
delete_site_option('Kloudymail');
delete_option('widget_kloudymail');
delete_site_option('widget_kloudymail');
delete_option('kmlg_db_version');
delete_site_option('kmlg_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('kmlgUpdateFields');

