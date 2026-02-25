<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dbem_ms_mainblog_locations');
delete_site_option('dbem_ms_mainblog_locations');
delete_option('dbem_locations_page');
delete_site_option('dbem_locations_page');
delete_option('dbem_ms_global_locations_links');
delete_site_option('dbem_ms_global_locations_links');
delete_option('dbem_ms_locations_slug');
delete_site_option('dbem_ms_locations_slug');
delete_option('dbem_attributes_enabled');
delete_site_option('dbem_attributes_enabled');
delete_option('dbem_placeholders_custom');
delete_site_option('dbem_placeholders_custom');

