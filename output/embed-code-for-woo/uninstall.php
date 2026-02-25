<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wec_archive_code');
delete_site_option('wec_archive_code');
delete_option('wec_product_page');
delete_site_option('wec_product_page');
delete_option('wec_cart_page');
delete_site_option('wec_cart_page');
delete_option('wec_checkout_page');
delete_site_option('wec_checkout_page');
delete_option('wec_confirmation_page');
delete_site_option('wec_confirmation_page');
delete_option('wec_embed_in_head');
delete_site_option('wec_embed_in_head');
delete_option('wec_all_pages');
delete_site_option('wec_all_pages');

