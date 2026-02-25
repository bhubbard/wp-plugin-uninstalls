#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_page_sidebars_default_sidebar'
wp option delete 'simple_page_sidebars_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sidebar_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sidebar_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sidebar_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sidebar_name'"
