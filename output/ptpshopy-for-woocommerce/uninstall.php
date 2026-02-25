<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_ptpshopy_latest_datetime_check_public_version_plugin');
delete_site_option('wc_ptpshopy_latest_datetime_check_public_version_plugin');
delete_option('wc_ptpshopy_show_keys_notice');
delete_site_option('wc_ptpshopy_show_keys_notice');
delete_option('wc_ptpshopy_show_ssl_notice');
delete_site_option('wc_ptpshopy_show_ssl_notice');
delete_option('wc_ptpshopy_show_phpver_notice');
delete_site_option('wc_ptpshopy_show_phpver_notice');
delete_option('wc_ptpshopy_show_wcver_notice');
delete_site_option('wc_ptpshopy_show_wcver_notice');
delete_option('wc_ptpshopy_show_curl_notice');
delete_site_option('wc_ptpshopy_show_curl_notice');
delete_option('woocommerce_ptpshopy_settings');
delete_site_option('woocommerce_ptpshopy_settings');
delete_option('WC_Ptpshopy_show_phpver_notice');
delete_site_option('WC_Ptpshopy_show_phpver_notice');
delete_option('WC_Ptpshopy_show_wcver_notice');
delete_site_option('WC_Ptpshopy_show_wcver_notice');
delete_option('WC_Ptpshopy_show_curl_notice');
delete_site_option('WC_Ptpshopy_show_curl_notice');
delete_option('WC_Ptpshopy_show_keys_notice');
delete_site_option('WC_Ptpshopy_show_keys_notice');
delete_option('WC_Ptpshopy_show_ssl_notice');
delete_site_option('WC_Ptpshopy_show_ssl_notice');
delete_option('wc_ptpshopy_version');
delete_site_option('wc_ptpshopy_version');

