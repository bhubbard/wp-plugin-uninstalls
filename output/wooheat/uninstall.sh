#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woo_heat_orderby'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_heat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_heat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_heat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_heat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_heat_scoville'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_heat_scoville'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_heat_scoville'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_heat_scoville'"
