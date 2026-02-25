<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssoi_shipping_icons_plugin_settings');
delete_site_option('ssoi_shipping_icons_plugin_settings');

