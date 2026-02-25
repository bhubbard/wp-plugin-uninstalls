#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'fast_aweber_refresh_token_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ff_auto_reponder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ff_auto_reponder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ff_auto_reponder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ff_auto_reponder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aweber_list_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aweber_list_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aweber_list_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aweber_list_id'"
