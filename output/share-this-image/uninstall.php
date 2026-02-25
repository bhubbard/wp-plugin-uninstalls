<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sti_settings');
delete_site_option('sti_settings');
delete_option('sti_plugin_ver');
delete_site_option('sti_plugin_ver');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

