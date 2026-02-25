<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('wc_rename_default_sorting');
delete_site_option('wc_rename_default_sorting');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_extra_sorting_options_version');
delete_site_option('wc_extra_sorting_options_version');
delete_option('wc_extra_product_sorting_options');
delete_site_option('wc_extra_product_sorting_options');

