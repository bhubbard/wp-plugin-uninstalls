#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paysley_settings'
wp option delete 'paysley_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paysley_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paysley_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paysley_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paysley_product_id'"
