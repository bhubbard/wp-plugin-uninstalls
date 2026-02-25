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
delete_option('woocommerce_alipay_settings');
delete_site_option('woocommerce_alipay_settings');
delete_option('woo_alipay_plugin_version');
delete_site_option('woo_alipay_plugin_version');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

