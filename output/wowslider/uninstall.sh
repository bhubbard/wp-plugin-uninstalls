#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wowslider_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wowslider_last_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wowslider_last_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wowslider_last_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wowslider_last_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_wowslider_sliders_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_wowslider_sliders_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_wowslider_sliders_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_wowslider_sliders_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managewowslider_sliderscolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managewowslider_sliderscolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managewowslider_sliderscolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managewowslider_sliderscolumnshidden'"
