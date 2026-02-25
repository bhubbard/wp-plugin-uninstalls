<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wau_addon_settings');
delete_site_option('wau_addon_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

