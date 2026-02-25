#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ddflexsidebars_default_sidebar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sidebar_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sidebar_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sidebar_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sidebar_name'"
