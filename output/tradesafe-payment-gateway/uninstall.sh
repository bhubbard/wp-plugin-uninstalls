#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tradesafe_settings'
wp option delete 'tradesafe_api_access'
wp option delete 'dokan_selling'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_default_gateway'
wp option delete 'tradesafe_client_id'
wp option delete 'tradesafe_client_secret'
wp option delete 'tradesafe_transaction_industry'
wp option delete 'tradesafe_production_mode'
wp option delete 'tradesafe_transaction_marketplace'
wp option delete 'tradesafe_transaction_fee_allocation'
wp option delete 'tradesafe_transaction_fee'
wp option delete 'tradesafe_transaction_fee_type'
wp option delete 'processing_fee'
wp option delete 'tradesafe_payment_gateway_version'

# Delete Transients
wp transient delete 'tradesafe_client_info'
wp transient delete 'tradesafe_client_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_profile_settings'"
