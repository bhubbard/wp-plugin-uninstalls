<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xml_sitemaps');
delete_site_option('xml_sitemaps');
delete_option('xml_sitemaps_ping');
delete_site_option('xml_sitemaps_ping');

// Clear Cron Jobs
wp_clear_scheduled_hook('xml_sitemaps_ping');

