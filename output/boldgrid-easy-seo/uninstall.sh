#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'options_meta_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bgseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bgseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bgseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bgseo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bgseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bgseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bgseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bgseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bgseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bgseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bgseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bgseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bgseo_robots_follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bgseo_robots_follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bgseo_robots_follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bgseo_robots_follow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bgseo_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bgseo_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bgseo_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bgseo_robots_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
