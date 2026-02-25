<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_variation_swatches');
delete_site_option('woo_variation_swatches');
delete_option('aqf_variation_price_plugin_notice');
delete_site_option('aqf_variation_price_plugin_notice');

// Delete Transients
delete_transient('aqf_variation_price_plugin_notice');
delete_site_transient('aqf_variation_price_plugin_notice');

