<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recently_activated');
delete_site_option('recently_activated');
delete_option('clss_options');
delete_site_option('clss_options');
delete_option('update_core');
delete_site_option('update_core');
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('update_themes');
delete_site_option('update_themes');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

