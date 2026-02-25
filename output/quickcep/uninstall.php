<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quickcep_settings');
delete_site_option('quickcep_settings');
delete_option('woocommerce_quickcep_version');
delete_site_option('woocommerce_quickcep_version');

// Delete Transients
delete_transient('is_quickcep_plugin_outdated');
delete_site_transient('is_quickcep_plugin_outdated');

