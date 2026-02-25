#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icl_sitepress_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_room_origin_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_room_origin_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_room_origin_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_room_origin_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hb_max_number_of_adults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hb_max_number_of_adults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hb_max_number_of_adults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hb_max_number_of_adults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_room_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_room_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_room_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_room_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hb_room_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hb_room_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hb_room_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hb_room_extra'"
