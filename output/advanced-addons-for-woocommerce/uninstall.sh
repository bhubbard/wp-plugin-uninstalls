#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_addons_globally'
wp option delete 'default_addon_state'
wp option delete 'require_addon_selection'
wp option delete 'enable_addon_tax'
wp option delete 'addon_tax_class'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_addons'"
