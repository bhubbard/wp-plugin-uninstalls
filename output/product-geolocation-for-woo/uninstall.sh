#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product_geolocation_for_woo_version'

# Delete Transients
wp transient delete 'product_geolocation_for_woo_missing_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wprwcp_product_gmap_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wprwcp_product_gmap_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wprwcp_product_gmap_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wprwcp_product_gmap_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wprwcp_product_gmap_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wprwcp_product_gmap_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wprwcp_product_gmap_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wprwcp_product_gmap_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wprwcp_product_gmap_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wprwcp_product_gmap_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wprwcp_product_gmap_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wprwcp_product_gmap_longitude'"
