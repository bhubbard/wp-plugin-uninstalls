#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pronamic_event_status_upcoming'
wp option delete 'pronamic_event_status_passed'
wp option delete 'pronamic_event_repeat_slug_date_format'
wp option delete 'pronamic_event_base'
wp option delete 'pronamic_event_category_base'
wp option delete 'pronamic_event_status_base'
wp option delete 'pronamic_events_db_version'

# Clear Cron Jobs
wp cron event delete 'pronamic_event_status_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_repeat_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_repeat_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_repeat_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_repeat_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_repeat_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_repeat_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_repeat_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_repeat_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_ends_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_ends_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_ends_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_ends_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_ends_on_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_ends_on_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_ends_on_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_ends_on_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_ends_on_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_ends_on_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_ends_on_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_ends_on_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_start_date_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_start_date_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_start_date_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_start_date_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_end_date_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_end_date_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_end_date_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_end_date_gmt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_event_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_event_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_event_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_event_url'"
