#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ahcfree_first_time_setup'
wp option delete 'ahcfree_custom_timezone'
wp option delete 'ahcfree_upgrade_message'
wp option delete 'ahcfree_new_updates'
wp option delete 'ahcfree_hide_top_bar_icon'
wp option delete 'ahcfree_delete_plugin_data_on_uninstall'
wp option delete 'ahcproExcludeRoles'
wp option delete 'ahcfree_ahcfree_haships'
wp option delete 'ahcfree_save_ips_opn'
wp option delete 'ahcproUserRoles'
wp option delete 'ahcproRobots'
wp option delete 'ahcfree_wp_hits_counter_options'
wp option delete 'ahc_db_indexes_ahc_online_users_added'

# Clear Cron Jobs
wp cron event delete 'ahc_cleanup_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahcfree_total_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahcfree_total_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahcfree_total_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahcfree_total_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ahcfree_unique_visitors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ahcfree_unique_visitors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ahcfree_unique_visitors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ahcfree_unique_visitors'"
