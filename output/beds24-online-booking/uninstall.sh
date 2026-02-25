#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beds24_ownerid'
wp option delete 'beds24_propid'
wp option delete 'beds24_roomid'
wp option delete 'beds24_numdisplayed'
wp option delete 'beds24_hidecalendar'
wp option delete 'beds24_hideheader'
wp option delete 'beds24_hidefooter'
wp option delete 'beds24_referer'
wp option delete 'beds24_domain'
wp option delete 'beds24_advancedays'
wp option delete 'beds24_numnight'
wp option delete 'beds24_numadult'
wp option delete 'beds24_numchild'
wp option delete 'beds24_layout'
wp option delete 'beds24_width'
wp option delete 'beds24_height'
wp option delete 'beds24_target'
wp option delete 'beds24_custom'
wp option delete 'beds24_color'
wp option delete 'beds24_padding'
wp option delete 'beds24_bgcolor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ownerid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ownerid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ownerid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ownerid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'propid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'propid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'propid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'propid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roomid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roomid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roomid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roomid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'domain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'domain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'domain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'domain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scrolltop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scrolltop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scrolltop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scrolltop'"
