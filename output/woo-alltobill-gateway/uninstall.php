<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_alltobill_title');
delete_site_option('woocommerce_alltobill_title');
delete_option('woocommerce_alltobill_instance');
delete_site_option('woocommerce_alltobill_instance');
delete_option('woocommerce_alltobill_sid');
delete_site_option('woocommerce_alltobill_sid');
delete_option('woocommerce_alltobill_prefix');
delete_site_option('woocommerce_alltobill_prefix');
delete_option('woocommerce_alltobill_logos');
delete_site_option('woocommerce_alltobill_logos');
delete_option('woocommerce_alltobill_settings');
delete_site_option('woocommerce_alltobill_settings');

