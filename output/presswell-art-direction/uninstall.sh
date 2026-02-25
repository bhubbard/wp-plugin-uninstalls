#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'pwad_conflicts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pwad_focal_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pwad_focal_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pwad_focal_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pwad_focal_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hotspots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hotspots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hotspots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hotspots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faces'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faces'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faces'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faces'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'focus_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'focus_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'focus_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'focus_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
