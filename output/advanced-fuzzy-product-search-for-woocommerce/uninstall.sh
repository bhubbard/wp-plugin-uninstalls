#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_overview_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_subscribe_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_rating_%'"

# Clear Cron Jobs
wp cron event delete 'afsw_calc_products_indexing'
wp cron event delete 'afsw_calc_indexing_shedule'
wp cron event delete 'afsw_calc_optimizing_shedule'
wp cron event delete 'afsw_do_users_actions'
wp cron event delete 'afsw_clear_history'
wp cron event delete 'afsw_clear_history_shedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_afsw_search_field_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_afsw_search_field_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_afsw_search_field_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_afsw_search_field_id'"
