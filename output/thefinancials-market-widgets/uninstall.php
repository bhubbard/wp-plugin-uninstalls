<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tfcwidgets4wp_install_ping_sent');
delete_site_option('tfcwidgets4wp_install_ping_sent');
delete_option('tfcwidgets4wp_options');
delete_site_option('tfcwidgets4wp_options');

// Delete Transients
delete_transient('tfcwidgets4wp_catalog_v2');
delete_site_transient('tfcwidgets4wp_catalog_v2');
delete_transient('tfcwidgets4wp_catalog_v1');
delete_site_transient('tfcwidgets4wp_catalog_v1');

