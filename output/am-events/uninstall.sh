#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'am_timepicker_minutestep'
wp option delete 'am_rewrite_slug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'am_startdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'am_startdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'am_startdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'am_startdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'am_enddate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'am_enddate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'am_enddate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'am_enddate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'am_recurrence_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'am_recurrence_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'am_recurrence_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'am_recurrence_id'"
