<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_paghiper_pix_settings');
delete_site_option('woocommerce_paghiper_pix_settings');
delete_option('woocommerce_paghiper_billet_settings');
delete_site_option('woocommerce_paghiper_billet_settings');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woocommerce_paghiper_db_version');
delete_site_option('woocommerce_paghiper_db_version');
delete_option('woocommerce_paghiper_settings');
delete_site_option('woocommerce_paghiper_settings');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');

// Delete Transients
delete_transient('woo_paghiper_apikey_valid');
delete_site_transient('woo_paghiper_apikey_valid');
delete_transient('woo_paghiper_notice_2_1');
delete_site_transient('woo_paghiper_notice_2_1');
delete_transient('woo_paghiper_notice_install_date');
delete_site_transient('woo_paghiper_notice_install_date');
delete_transient('woo_paghiper_notice_review_done');
delete_site_transient('woo_paghiper_notice_review_done');
delete_transient('woo_paghiper_notice_review_ignore');
delete_site_transient('woo_paghiper_notice_review_ignore');

