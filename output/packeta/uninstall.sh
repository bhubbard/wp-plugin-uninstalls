#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_specific_ship_to_countries'
wp option delete 'edit_shop_order_per_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'street'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'street'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'street'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'street'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'houseNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'houseNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'houseNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'houseNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'county'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'county'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'county'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'county'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude'"
