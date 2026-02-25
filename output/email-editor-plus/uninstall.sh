#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edpw_active_addons'
wp option delete 'edpw_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_pos_store_phone'
wp option delete 'woocommerce_pos_refund_returns_policy'
wp option delete 'edpw_version'
wp option delete 'edpw_migration_status'
wp option delete 'eca_settings'

# Delete Transients
wp transient delete 'edpw_remote_addons_list'
wp transient delete 'edpw_remote_recommendation_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
