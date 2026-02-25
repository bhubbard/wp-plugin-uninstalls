#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%history'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%history_delete'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%history_delete_media'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_attempt'"

# Clear Cron Jobs
wp cron event delete 'restful-syndication_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_profile_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_profile_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_profile_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_profile_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'restfulsyndication_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'restfulsyndication_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'restfulsyndication_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'restfulsyndication_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%source_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%source_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%source_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%source_guid'"
