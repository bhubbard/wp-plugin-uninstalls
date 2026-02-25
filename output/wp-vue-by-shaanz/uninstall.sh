#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'is_vue_load_env_option'
wp option delete 'is_vue_load_overide'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_vue_load'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_vue_load'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_vue_load'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_vue_load'"
