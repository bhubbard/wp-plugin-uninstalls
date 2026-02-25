#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_opts_data'"
wp option delete 'cfs_ac_subscribe'
wp option delete 'cfs_ac_remind'
wp option delete 'cfs_ac_disabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cleared_trash_stat_data'"
wp option delete 'cfs_show_love_link'
wp option delete 'cfs_last_check_love_link'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst'"
