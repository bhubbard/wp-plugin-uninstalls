<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_api_enabled');
delete_site_option('woocommerce_api_enabled');
delete_option('woocommerce_snappic_settings');
delete_site_option('woocommerce_snappic_settings');

// Delete Transients
delete_transient('_snappic_activation_redirect');
delete_site_transient('_snappic_activation_redirect');

