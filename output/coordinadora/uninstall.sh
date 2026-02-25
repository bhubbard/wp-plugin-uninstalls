#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_coordinadora_settings'
wp option delete 'woocommerce_store_city'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coordinadora_warehouse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coordinadora_warehouse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coordinadora_warehouse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coordinadora_warehouse'"
