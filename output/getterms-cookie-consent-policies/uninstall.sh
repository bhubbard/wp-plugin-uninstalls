#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getterms_token'
wp option delete 'getterms-manual-widget'
wp option delete 'getterms-auto-widget'
wp option delete 'getterms-show-widget'
wp option delete 'getterms-auto-language-detection'
wp option delete 'getterms-widget-slug'
wp option delete 'getterms-widget-language'
wp option delete 'getterms-default-language'
wp option delete 'getterms-languages'
wp option delete 'getterms-policies'
wp option delete 'getterms-token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_custom'"
