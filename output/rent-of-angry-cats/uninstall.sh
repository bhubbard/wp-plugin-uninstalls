#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dscc_admin_googleipikey'
wp option delete 'dscc_admin_listitem_count'
wp option delete 'dscc_admin_filter_radius'
wp option delete 'dscc_admin_lb_pager'
wp option delete 'dscc_admin_lb_autoplay'
wp option delete 'dscc_admin_lb_zoom'
wp option delete 'dscc_admin_lb_fullscreen'
wp option delete 'dscc_admin_lb_hash'
wp option delete 'dscc_admin_lb_share'
wp option delete 'dscc_admin_lb_thumbnail'
wp option delete 'dscc_admin_lb_rotate'
wp option delete 'dscc_filter_type_show'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscc_timearrea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscc_timearrea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscc_timearrea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscc_timearrea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscc_datearrea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscc_datearrea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscc_datearrea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscc_datearrea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscc_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscc_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscc_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscc_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscc_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscc_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscc_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscc_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscc_time_from_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscc_time_from_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscc_time_from_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscc_time_from_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscc_time_to_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscc_time_to_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscc_time_to_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscc_time_to_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscc_tsbletype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscc_tsbletype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscc_tsbletype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscc_tsbletype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
