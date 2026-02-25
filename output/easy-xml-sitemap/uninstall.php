<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_xml_sitemap_settings');
delete_site_option('easy_xml_sitemap_settings');
delete_option('easy_xml_sitemap_stats');
delete_site_option('easy_xml_sitemap_stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('easy_xml_sitemap_do_ping');
wp_clear_scheduled_hook('easy_xml_sitemap_cleanup');

