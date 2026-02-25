#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbot_settings'
wp option delete 'lastupdateid'
wp option delete 'wp_teletter_log'

# Clear Cron Jobs
wp cron event delete 'getupdates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isadmin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isadmin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isadmin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isadmin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbot_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbot_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbot_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbot_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbot_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbot_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbot_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbot_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbot_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbot_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbot_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbot_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
