#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awrpg_galleryTables'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_awesome'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lightcs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_jgalery'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awrpg_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awrpg_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awrpg_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awrpg_video_url'"
