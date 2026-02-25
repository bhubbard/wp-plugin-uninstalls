<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wapf_options');
delete_site_option('wapf_options');
delete_option('wapf_queried_termid');
delete_site_option('wapf_queried_termid');
delete_option('wapf_queried_is_cat');
delete_site_option('wapf_queried_is_cat');
delete_option('wapf_queried_is_shop');
delete_site_option('wapf_queried_is_shop');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');

