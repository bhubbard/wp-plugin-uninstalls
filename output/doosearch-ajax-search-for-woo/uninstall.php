<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('doosearchas_search_main_options');
delete_site_option('doosearchas_search_main_options');
delete_option('doosearchas_search_style_options');
delete_site_option('doosearchas_search_style_options');
delete_option('doosearchas_search_upgrade_options');
delete_site_option('doosearchas_search_upgrade_options');
delete_option('doosearchas_search_filter_options');
delete_site_option('doosearchas_search_filter_options');
delete_option('doosearchas_search_product_options');
delete_site_option('doosearchas_search_product_options');
delete_option('doosearchas_search_additional_options');
delete_site_option('doosearchas_search_additional_options');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('woocommerce_placeholder_image');
delete_site_option('woocommerce_placeholder_image');

