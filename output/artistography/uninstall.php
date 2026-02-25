<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_artistography_version');
delete_site_option('wp_artistography_version');
delete_option('wp_artistography_business_name');
delete_site_option('wp_artistography_business_name');
delete_option('wp_artistography_donate_email');
delete_site_option('wp_artistography_donate_email');
delete_option('wp_artistography_paypal_sandbox');
delete_site_option('wp_artistography_paypal_sandbox');
delete_option('wp_artistography_preserve_hidden_pages');
delete_site_option('wp_artistography_preserve_hidden_pages');
delete_option('wp_artistography_preserve_database');
delete_site_option('wp_artistography_preserve_database');
delete_option('wp_artistography_email_notify_ftp');
delete_site_option('wp_artistography_email_notify_ftp');
delete_option('wp_artistography_ftp_host');
delete_site_option('wp_artistography_ftp_host');
delete_option('wp_artistography_ftp_user');
delete_site_option('wp_artistography_ftp_user');
delete_option('wp_artistography_ftp_pass');
delete_site_option('wp_artistography_ftp_pass');
delete_option('wp_artistography_ftp_path');
delete_site_option('wp_artistography_ftp_path');
delete_option('wp_artistography_gallery_style');
delete_site_option('wp_artistography_gallery_style');
delete_option('wp_artistography_ajax_loader');
delete_site_option('wp_artistography_ajax_loader');
delete_option('wp_artistography_download_page');
delete_site_option('wp_artistography_download_page');
delete_option('wp_artistography_cart_page');
delete_site_option('wp_artistography_cart_page');
delete_option('wp_artistography_checkout_page');
delete_site_option('wp_artistography_checkout_page');
delete_option('wp_artistography_thankyou_page');
delete_site_option('wp_artistography_thankyou_page');
delete_option('wp_artistography_orders_page');
delete_site_option('wp_artistography_orders_page');
delete_option('wp_artistography_ipn_page');
delete_site_option('wp_artistography_ipn_page');
delete_option('wp_artistography_products_cart_page');
delete_site_option('wp_artistography_products_cart_page');
delete_option('wp_aristography_products_cart_page');
delete_site_option('wp_aristography_products_cart_page');
delete_option('wp_artistography_products_checkout_page');
delete_site_option('wp_artistography_products_checkout_page');
delete_option('wp_aristography_products_checkout_page');
delete_site_option('wp_aristography_products_checkout_page');

