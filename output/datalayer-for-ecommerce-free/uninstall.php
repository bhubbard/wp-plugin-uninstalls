<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tracking_option_pro');
delete_site_option('tracking_option_pro');
delete_option('options_tracking_option_free');
delete_site_option('options_tracking_option_free');
delete_option('migrate_datalayer_for_woocommerce');
delete_site_option('migrate_datalayer_for_woocommerce');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

