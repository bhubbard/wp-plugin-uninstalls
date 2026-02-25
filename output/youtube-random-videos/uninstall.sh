#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_youtube_override_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_youtube_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_youtube_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_youtube_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_youtube_options'"
