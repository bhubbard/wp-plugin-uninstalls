<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpul_settings');
delete_site_option('wpul_settings');
delete_option('set_checkbox');
delete_site_option('set_checkbox');
delete_option('redirect');
delete_site_option('redirect');
delete_option('redirect_out');
delete_site_option('redirect_out');
delete_option('welcome');
delete_site_option('welcome');
delete_option('use_stylesheet');
delete_site_option('use_stylesheet');
delete_option('set_nonlog');
delete_site_option('set_nonlog');
delete_option('set_log');
delete_site_option('set_log');
delete_option('_site_transient_update_core');
delete_site_option('_site_transient_update_core');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');

