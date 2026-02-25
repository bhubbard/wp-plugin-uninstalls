<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_light_xml_sitemap');
delete_site_option('_light_xml_sitemap');
delete_option('_maintenance_work');
delete_site_option('_maintenance_work');

