<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_gzdp_legal_page_terms_enabled');
delete_site_option('woocommerce_gzdp_legal_page_terms_enabled');
delete_option('woocommerce_gzdp_legal_page_revocation_enabled');
delete_site_option('woocommerce_gzdp_legal_page_revocation_enabled');
delete_option('gox_product_domain');
delete_site_option('gox_product_domain');

