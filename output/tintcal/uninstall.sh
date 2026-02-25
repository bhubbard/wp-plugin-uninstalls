#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tintcal_categories'
wp option delete 'tintcal_start_day'
wp option delete 'tintcal_header_color'
wp option delete 'tintcal_enable_holidays'
wp option delete 'tintcal_holiday_color'
wp option delete 'tintcal_show_header_weekend_color'
wp option delete 'tintcal_show_sunday_color'
wp option delete 'tintcal_sunday_color'
wp option delete 'tintcal_show_saturday_color'
wp option delete 'tintcal_saturday_color'
wp option delete 'tintcal_show_legend'
wp option delete 'tintcal_show_today_button'
wp option delete 'tintcal_role_permissions'
wp option delete 'tintcal_date_categories'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_start_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_start_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_start_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_start_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_header_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_header_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_header_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_header_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_enable_holidays'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_enable_holidays'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_enable_holidays'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_enable_holidays'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_holiday_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_holiday_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_holiday_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_holiday_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_show_header_weekend_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_show_header_weekend_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_show_header_weekend_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_show_header_weekend_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_show_sunday_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_show_sunday_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_show_sunday_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_show_sunday_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_sunday_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_sunday_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_sunday_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_sunday_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_show_saturday_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_show_saturday_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_show_saturday_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_show_saturday_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_saturday_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_saturday_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_saturday_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_saturday_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_show_legend'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_show_legend'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_show_legend'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_show_legend'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_show_today_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_show_today_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_show_today_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_show_today_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_visible_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_visible_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_visible_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_visible_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tintcal_settings_initialized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tintcal_settings_initialized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tintcal_settings_initialized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tintcal_settings_initialized'"
