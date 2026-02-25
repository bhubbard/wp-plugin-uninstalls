#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bayarcash_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_bayarcash-wc_settings'
wp option delete 'bayarcash_enable_multi_merchant'
wp option delete 'bayarcash_enable_fpx_gateways'
wp option delete 'bayarcash_additional_fpx'
wp option delete 'bayarcash_enable_duitnow_gateways'
wp option delete 'bayarcash_additional_duitnow'
wp option delete 'woocommerce_directdebit-wc_settings'
wp option delete 'woocommerce_duitnowboost-wc_settings'
wp option delete 'woocommerce_duitnow-wc_settings'
wp option delete 'woocommerce_duitnownets-wc_settings'
wp option delete 'woocommerce_duitnowqr-wc_settings'
wp option delete 'woocommerce_duitnowqris-wc_settings'
wp option delete 'woocommerce_duitnowqriswallet-wc_settings'
wp option delete 'woocommerce_duitnowshopee-wc_settings'
wp option delete 'woocommerce_linecredit-wc_settings'

# Delete Transients
wp transient delete 'bayarcash_admin_notice'

# Clear Cron Jobs
wp cron event delete 'bayarcash_wc_checkpayment'
wp cron event delete 'bayarcash_wc_check_transaction'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bayarcash_wc_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bayarcash_wc_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bayarcash_wc_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bayarcash_wc_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bc_payment_intent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bc_payment_intent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bc_payment_intent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bc_payment_intent'"
