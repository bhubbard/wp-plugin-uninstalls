<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vtd_vtd_cf_posts_fields_general_settings_name');
delete_site_option('vtd_vtd_cf_posts_fields_general_settings_name');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

