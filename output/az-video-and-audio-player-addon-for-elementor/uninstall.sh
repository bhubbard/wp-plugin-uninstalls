#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leanpl_installed_time'
wp option delete 'leanpl_demos_created'
wp option delete 'vapfem_installed_time'
wp option delete 'leanpl_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '___controls_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '___controls_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '___controls_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '___controls_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_audio_source_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_audio_source_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_audio_source_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_audio_source_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_audio_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_audio_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_audio_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_audio_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_html5_audio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_html5_audio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_html5_audio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_html5_audio_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_youtube_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_youtube_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_youtube_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_youtube_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vimeo_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vimeo_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vimeo_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vimeo_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_html5_source_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_html5_source_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_html5_source_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_html5_source_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_html5_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_html5_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_html5_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_html5_video_url'"
