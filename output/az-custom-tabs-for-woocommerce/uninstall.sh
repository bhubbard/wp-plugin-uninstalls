#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azwctabs_global_tabs'
wp option delete 'az-custom-tabs-for-woocommerce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_azwctabs_product_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_azwctabs_product_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_azwctabs_product_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_azwctabs_product_tabs'"
