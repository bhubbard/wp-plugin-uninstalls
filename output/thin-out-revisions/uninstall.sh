#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hm_tor_options'

# Clear Cron Jobs
wp cron event delete 'hm_tor_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hm_tor_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hm_tor_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hm_tor_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hm_tor_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hm_tor_show_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hm_tor_show_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hm_tor_show_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hm_tor_show_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hm_tor_memo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hm_tor_memo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hm_tor_memo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hm_tor_memo'"
