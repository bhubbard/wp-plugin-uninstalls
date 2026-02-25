<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swifch_settings');
delete_site_option('swifch_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('swifch_version');
delete_site_option('swifch_version');
delete_option('swifch_installed_time');
delete_site_option('swifch_installed_time');

