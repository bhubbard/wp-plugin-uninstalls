#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_yuansfer_settings'
wp option delete 'wc_yuansfer_show_ssl_notice'
wp option delete 'wc_yuansfer_show_keys_notice'
wp option delete 'wc_yuansfer_show_phpver_notice'
wp option delete 'wc_yuansfer_show_wcver_notice'
wp option delete 'wc_yuansfer_show_curl_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'wc_yuansfer_show_alipay_notice'
wp option delete 'wc_yuansfer_show_wechatpay_notice'
wp option delete 'wc_yuansfer_show_creditcard_notice'
wp option delete 'wc_yuansfer_show_paypal_notice'
wp option delete 'wc_yuansfer_show_venmo_notice'
wp option delete 'woocommerce_gateway_yuansfer_retention'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wc_yuansfer_show_request_api_notice'
wp option delete 'wc_yuansfer_version'
wp option delete 'woocommerce_yuansfer_alipay_settings'
wp option delete 'woocommerce_yuansfer_wechatpay_settings'
wp option delete 'woocommerce_yuansfer_creditcard_settings'
wp option delete 'woocommerce_yuansfer_paypal_settings'
wp option delete 'woocommerce_yuansfer_venmo_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yuansfer_customer_%' OR option_name LIKE '_site_transient_yuansfer_customer_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yuansfer_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yuansfer_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yuansfer_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yuansfer_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yuansfer_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yuansfer_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yuansfer_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yuansfer_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yuansfer_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yuansfer_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yuansfer_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yuansfer_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yuansfer_card_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yuansfer_card_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yuansfer_card_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yuansfer_card_id'"
