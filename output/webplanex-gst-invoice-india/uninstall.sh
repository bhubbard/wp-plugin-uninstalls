#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webplanex_gst_b2b_integration'
wp option delete 'webplanex_gst_invoice_btn_account_page_integration'
wp option delete 'webplanex_gst_invoice_btn_email_integration'
wp option delete 'webplanex_gst_b2b_integration_required'
wp option delete 'webplanex_gst_invoice_btn_order_status_integration'
wp option delete 'webplanex_gst_shop_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'webplanex_gst_%'"
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_api_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismiss_until'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gst_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gst_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gst_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gst_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
