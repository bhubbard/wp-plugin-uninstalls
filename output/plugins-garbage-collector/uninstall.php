<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgc_options');
delete_site_option('pgc_options');
delete_option('pgc_settings');
delete_site_option('pgc_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('pgc_scanprogress_current');
delete_site_option('pgc_scanprogress_current');
delete_option('pgc_scanprogress_status');
delete_site_option('pgc_scanprogress_status');

