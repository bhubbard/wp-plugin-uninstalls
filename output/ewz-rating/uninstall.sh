#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewz_rating_version'
wp option delete 'ewz_admin_delete_rating'
wp option delete 'ewz_max_unsaved'
wp option delete 'ewz_init_img_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewz_useradio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewz_useradio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewz_useradio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewz_useradio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewz_nextafter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewz_nextafter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewz_nextafter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewz_nextafter'"
