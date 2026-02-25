<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('effortless_qrcode_version');
delete_site_option('effortless_qrcode_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('effortless_qrcode_settings');
delete_site_option('effortless_qrcode_settings');

// Delete Transients
delete_transient('effortless_qrcode_cache');
delete_site_transient('effortless_qrcode_cache');

