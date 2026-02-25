#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kia_subtitle_options'
wp option delete 'kia_subtitle_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kia_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kia_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kia_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kia_subtitle'"
