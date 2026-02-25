#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vindi_invalid_api_key'
wp option delete 'woocommerce_subscriptions_turn_off_automatic_payments'
wp option delete 'woocommerce_vindi-credit-card_settings'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'vindi_product_message'
wp transient delete 'vindi_payment_methods'
wp transient delete 'vindi_merchant'
wp transient delete 'vindi_plans'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vindi_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vindi_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vindi_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vindi_customer_id'"
