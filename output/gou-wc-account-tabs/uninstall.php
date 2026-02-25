<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
delete_option('gwats_config_page_settings');
delete_site_option('gwats_config_page_settings');
delete_option('woocommerce_gwat_config');
delete_site_option('woocommerce_gwat_config');
delete_option('woocommerce_gwat_layout');
delete_site_option('woocommerce_gwat_layout');
delete_option('gwats_add_update_endpoints');
delete_site_option('gwats_add_update_endpoints');

