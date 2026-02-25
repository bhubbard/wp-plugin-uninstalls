#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'setting_checkbox_popUpSlider'
wp option delete 'setting_popUpSlider_delay'
wp option delete 'setting_animacia'
wp option delete 'setting_current_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_sub_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_sub_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_sub_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_sub_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_date_OD'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_date_OD'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_date_OD'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_date_OD'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_date_DO'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_date_DO'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_date_DO'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_date_DO'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide_url'"
