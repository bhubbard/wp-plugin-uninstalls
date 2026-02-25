#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ytwc_youtube_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ytwc_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ytwc_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ytwc_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ytwc_cache'"
