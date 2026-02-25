-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_ptpshopy_latest_datetime_check_public_version_plugin', 'wc_ptpshopy_show_keys_notice', 'wc_ptpshopy_show_ssl_notice', 'wc_ptpshopy_show_phpver_notice', 'wc_ptpshopy_show_wcver_notice', 'wc_ptpshopy_show_curl_notice', 'woocommerce_ptpshopy_settings', 'WC_Ptpshopy_show_phpver_notice', 'WC_Ptpshopy_show_wcver_notice', 'WC_Ptpshopy_show_curl_notice', 'WC_Ptpshopy_show_keys_notice', 'WC_Ptpshopy_show_ssl_notice', 'wc_ptpshopy_version');

