<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcnpg_version');
delete_site_option('wcnpg_version');
delete_option('wcnpg_schema_version');
delete_site_option('wcnpg_schema_version');
delete_option('wcpng_schema_missing_tables');
delete_site_option('wcpng_schema_missing_tables');
delete_option('woocommerce_nestpay_settings');
delete_site_option('woocommerce_nestpay_settings');

// Delete Transients
delete_transient('wcnpg_installing');
delete_site_transient('wcnpg_installing');

