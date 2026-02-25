#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chat_webirc_options'
wp option delete 'chat_webirc_temp_avatars'
wp option delete 'chat_webirc_temp_files'

# Clear Cron Jobs
wp cron event delete 'chat_webirc_cleanup_temp_images'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_webirc_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_webirc_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_webirc_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_webirc_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_webirc_avatar_uploaded_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_webirc_avatar_uploaded_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_webirc_avatar_uploaded_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_webirc_avatar_uploaded_at'"
