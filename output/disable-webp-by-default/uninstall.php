<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_webp_transforms');
delete_site_option('disable_webp_transforms');
delete_option('disable_webp_by_default_plugin_version');
delete_site_option('disable_webp_by_default_plugin_version');
delete_option('disable_webp_by_default_database_version');
delete_site_option('disable_webp_by_default_database_version');

