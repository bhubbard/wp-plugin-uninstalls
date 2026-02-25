#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'av_transcoding_enabled'
wp option delete 'av_soundcloud_manager_enabled'
wp option delete 'av_ffmpeg_path'
wp option delete 'av_ffprobe_path'
wp option delete 'soundcloud_client_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_path'"

# Delete Transients
wp transient delete 'dirsize_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_progress' OR option_name LIKE '_site_transient_%_progress'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uploaded_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uploaded_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uploaded_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uploaded_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_fallback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_fallback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_fallback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_fallback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mp3_fallback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mp3_fallback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mp3_fallback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mp3_fallback'"
