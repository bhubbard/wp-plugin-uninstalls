#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pootlepb-template-product'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woobuilder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woobuilder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woobuilder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woobuilder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woobuilder_used_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woobuilder_used_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woobuilder_used_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woobuilder_used_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
