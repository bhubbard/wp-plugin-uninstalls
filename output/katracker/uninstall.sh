#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%open-tracker'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%announce-interval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%min-interval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%num-peers'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%max-peers'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%slug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%subdomain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%validate-hash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rename-files'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tracked-access'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%torrent-page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%labels'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%reset-announce'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default-announce'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%reset-comment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default-comment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"
wp option delete 'rss_language'

# Clear Cron Jobs
wp cron event delete 'katracker_clean_idle'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
