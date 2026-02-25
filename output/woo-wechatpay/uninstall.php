<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icl_enable_multi_currency');
delete_site_option('icl_enable_multi_currency');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_wechatpay_settings');
delete_site_option('woocommerce_wechatpay_settings');
delete_option('woo_wechatpay_plugin_version');
delete_site_option('woo_wechatpay_plugin_version');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Delete Transients
delete_transient('woo_wechatpay_flush');
delete_site_transient('woo_wechatpay_flush');

