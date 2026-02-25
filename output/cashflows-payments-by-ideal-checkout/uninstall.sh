#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cashflows_card_settings'
wp option delete 'woocommerce_cashflows_paypal_settings'
wp option delete 'iccf_debug'
wp option delete 'iccf_develop'
wp option delete 'iccf_prod_api_key'
wp option delete 'iccf_prod_configuration_id'
wp option delete 'iccf_int_api_key'
wp option delete 'iccf_int_configuration_id'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'iccf_additional_data'
wp option delete 'iccf_google_ananlytics'
wp option delete 'iccf_store_customer_data'
wp option delete 'iccf_log_days_to_keep'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cashflows_int_customerReference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cashflows_int_customerReference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cashflows_int_customerReference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cashflows_int_customerReference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cashflows_prod_customerReference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cashflows_prod_customerReference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cashflows_prod_customerReference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cashflows_prod_customerReference'"
