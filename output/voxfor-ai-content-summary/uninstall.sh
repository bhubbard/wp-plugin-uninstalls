#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voxfor_ai_summary_settings'
wp option delete 'voxfor_ai_summary_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_display_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_display_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_display_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_display_summary'"
