#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7-polylang-admin-notices'
wp option delete 'polylang'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_messages'"
