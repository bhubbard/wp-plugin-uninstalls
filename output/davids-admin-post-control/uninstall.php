<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_name');
delete_site_option('plugin_name');
delete_option('plugin_version');
delete_site_option('plugin_version');
delete_option('edit_per_page');
delete_site_option('edit_per_page');

