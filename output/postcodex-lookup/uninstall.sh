#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postcodex_lookup_settings'
wp option delete 'woocommerce_postcodex_lookup_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pl_autosearch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pl_autosearch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pl_autosearch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pl_autosearch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pl_override_selector'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pl_override_selector'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pl_override_selector'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pl_override_selector'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pl_load'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pl_load'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pl_load'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pl_load'"
