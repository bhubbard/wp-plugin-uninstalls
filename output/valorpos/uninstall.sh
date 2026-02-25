#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_valorpay_settings'
wp option delete 'woocommerce_valorpos_settings'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'valorpay_payment_failed_tracker'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vault_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vault_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vault_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vault_customer_id'"
