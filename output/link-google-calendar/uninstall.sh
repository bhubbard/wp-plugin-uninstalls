#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'link_google_calendar_textarea'
wp option delete 'link_google_calendar_textarea_1'
wp option delete 'link_google_calendar_textarea_2'
wp option delete 'link_google_calendar_textarea_3'
wp option delete 'link_google_calendar_textarea_4'
wp option delete 'link_google_calendar_textarea_5'
wp option delete 'num_of_calendars'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'link_google_calendar_textarea_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_google_calendar_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_google_calendar_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_google_calendar_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_google_calendar_ignore_notice'"
