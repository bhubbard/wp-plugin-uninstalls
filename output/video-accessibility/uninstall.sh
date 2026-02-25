#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'video_accessibility_statement'
wp option delete 'video_accessibility_youtube_api_key'
wp option delete 'video_accessibility_youtube_nocookie'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_accessibility_transcript'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_accessibility_transcript'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_accessibility_transcript'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_accessibility_transcript'"
