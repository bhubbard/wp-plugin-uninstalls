#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'next_open_google_maps_api'
wp option delete 'next_open_layout_type'
wp option delete 'next_open_initial_slots'
wp option delete 'next_open_email_from_name'
wp option delete 'next_open_email_from_address'
wp option delete 'next_open_categories'
wp option delete 'next_open_version'
wp option delete 'next_open_settings'
wp option delete 'next_open_delete_on_uninstall'

# Clear Cron Jobs
wp cron event delete 'next_open_send_reminders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_next_open_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_next_open_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_next_open_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_next_open_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_next_open_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_next_open_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_next_open_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_next_open_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_next_open_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_next_open_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_next_open_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_next_open_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_next_open_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_next_open_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_next_open_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_next_open_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_next_open_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_next_open_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_next_open_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_next_open_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_next_open_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_next_open_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_next_open_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_next_open_interval'"
