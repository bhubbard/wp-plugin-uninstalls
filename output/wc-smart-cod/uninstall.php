<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_cod_settings');
delete_site_option('woocommerce_cod_settings');

// Delete Transients
delete_transient('wc-smart-cod-activated');
delete_site_transient('wc-smart-cod-activated');
delete_transient('wsc-notice-dismissed');
delete_site_transient('wsc-notice-dismissed');
delete_transient('wc-smart-cod-notifications');
delete_site_transient('wc-smart-cod-notifications');
delete_transient('wc-smart-cod-settings');
delete_site_transient('wc-smart-cod-settings');

