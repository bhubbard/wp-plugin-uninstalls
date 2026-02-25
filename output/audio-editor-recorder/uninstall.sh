#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gspaudio_my_audios_page_id'
wp option delete 'gspaudio_editor_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_audio_editor_review_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_audio_editor_review_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_audio_editor_review_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_audio_editor_review_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_audio_editor_review_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_audio_editor_review_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_audio_editor_review_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_audio_editor_review_dismissed_at'"
