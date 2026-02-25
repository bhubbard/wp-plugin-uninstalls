#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_eb_cf_chu_de_chinh'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eb_product_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eb_product_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eb_product_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eb_product_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
