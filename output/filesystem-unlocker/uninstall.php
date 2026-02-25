<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('filesystem_unlocker_plugin_options');
delete_site_option('filesystem_unlocker_plugin_options');
delete_option('filesystem_unlocker_plugin_lock_state');
delete_site_option('filesystem_unlocker_plugin_lock_state');

