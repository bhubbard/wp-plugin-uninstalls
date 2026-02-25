#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_ptpshopy_latest_datetime_check_public_version_plugin'
wp option delete 'wc_ptpshopy_show_keys_notice'
wp option delete 'wc_ptpshopy_show_ssl_notice'
wp option delete 'wc_ptpshopy_show_phpver_notice'
wp option delete 'wc_ptpshopy_show_wcver_notice'
wp option delete 'wc_ptpshopy_show_curl_notice'
wp option delete 'woocommerce_ptpshopy_settings'
wp option delete 'WC_Ptpshopy_show_phpver_notice'
wp option delete 'WC_Ptpshopy_show_wcver_notice'
wp option delete 'WC_Ptpshopy_show_curl_notice'
wp option delete 'WC_Ptpshopy_show_keys_notice'
wp option delete 'WC_Ptpshopy_show_ssl_notice'
wp option delete 'wc_ptpshopy_version'

