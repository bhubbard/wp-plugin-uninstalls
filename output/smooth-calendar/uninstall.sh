#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'calendar_setting_header_bg'
wp option delete 'calendar_setting_days_bg'
wp option delete 'calendar_setting_link_bg'
wp option delete 'calendar_setting_single'
wp option delete 'calendar_setting_gcal'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_calendar_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_calendar_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_calendar_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_calendar_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_calendar_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_calendar_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_calendar_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_calendar_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_calendar_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_calendar_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_calendar_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_calendar_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_calendar_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_calendar_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_calendar_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_calendar_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_calendar_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_calendar_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_calendar_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_calendar_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_calendar_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_calendar_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_calendar_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_calendar_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_calendar_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_calendar_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_calendar_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_calendar_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_calendar_dateFormatted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_calendar_dateFormatted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_calendar_dateFormatted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_calendar_dateFormatted'"
