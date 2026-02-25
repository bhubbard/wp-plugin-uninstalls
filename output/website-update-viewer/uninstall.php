<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpuv_hide_plugin');
delete_site_option('wpuv_hide_plugin');
delete_option('wpuv_change_update_text');
delete_site_option('wpuv_change_update_text');
delete_option('wpuv_change_updates_heading');
delete_site_option('wpuv_change_updates_heading');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

