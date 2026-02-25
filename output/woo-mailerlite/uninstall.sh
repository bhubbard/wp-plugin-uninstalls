#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'active_sitewide_plugins'
wp option delete 'woo_ml_key'
wp option delete 'woo_ml_wizard_setup'
wp option delete 'woocommerce_mailerlite_settings'
wp option delete 'woo_ml_account_name'
wp option delete 'account_id'
wp option delete 'account_subdomain'
wp option delete 'woo_ml_shop_id'
wp option delete 'woo_ml_last_synced_guest_id'
wp option delete 'woo_mailerlite'
wp option delete 'woocommerce_version'

# Delete Transients
wp transient delete 'mailerlite_custom_fields'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ml_product_ignored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ml_product_ignored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ml_product_ignored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ml_product_ignored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ml_product_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ml_product_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ml_product_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ml_product_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ml_category_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ml_category_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ml_category_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ml_category_tracked'"
