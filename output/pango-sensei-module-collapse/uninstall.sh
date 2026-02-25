#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_video_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_video_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_video_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_video_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lesson_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lesson_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lesson_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lesson_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attached_media'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attached_media'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attached_media'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attached_media'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quiz_has_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quiz_has_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quiz_has_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quiz_has_questions'"
