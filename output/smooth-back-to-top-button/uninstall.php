<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbttb_variation_price_plugin_notice');
delete_site_option('sbttb_variation_price_plugin_notice');
delete_option('sbttb_settings');
delete_site_option('sbttb_settings');

// Delete Transients
delete_transient('sbttb_variation_price_plugin_notice');
delete_site_transient('sbttb_variation_price_plugin_notice');

