<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_quantapay_settings');
delete_site_option('woocommerce_quantapay_settings');
delete_option('quantapay-cloud-settings');
delete_site_option('quantapay-cloud-settings');
delete_option('qtp-cloud-settings');
delete_site_option('qtp-cloud-settings');
delete_option('quantapay_logging_enabled');
delete_site_option('quantapay_logging_enabled');
delete_option('qtp_logging_enabled');
delete_site_option('qtp_logging_enabled');

