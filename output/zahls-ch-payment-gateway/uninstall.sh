#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_zahls_settings'
wp option delete 'woocommerce_zahls_description'
wp option delete 'woocommerce_zahls_instance'
wp option delete 'woocommerce_zahls_sid'
wp option delete 'woocommerce_zahls_prefix'
wp option delete 'woocommerce_zahls_logos'
wp option delete 'woocommerce_zahls_subscriptions_title'
wp option delete 'woocommerce_zahls_subscriptions_user_desc'
wp option delete 'woocommerce_zahls_subscription_logos'
wp option delete 'woocommerce_prices_include_tax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zahls_auth_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zahls_auth_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zahls_auth_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zahls_auth_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zahls_gateway_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zahls_gateway_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zahls_gateway_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zahls_gateway_id'"
