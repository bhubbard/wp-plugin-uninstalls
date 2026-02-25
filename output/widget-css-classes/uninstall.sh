#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WCSSC_db_version'
wp option delete 'WCSSC_options'
wp option delete 'widget_logic'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customize_sidebars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customize_sidebars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customize_sidebars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customize_sidebars'"
