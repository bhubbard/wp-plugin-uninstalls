#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpsfs_player_statistics_mode'
wp option delete 'dpsfs_show_day'
wp option delete 'dpsfs_show_number'
wp option delete 'dpsfs_show_performances'
wp option delete 'dpsfs_show_minutes'
wp option delete 'dpsfs_show_extra_details'
wp option delete 'sportspress_event_minutes'
wp option delete 'sportspress_player_show_statistics'
wp option delete 'sportspress_player_show_total'
wp option delete 'sportspress_enable_scrollable_tables'
wp option delete 'sportspress_player_show_career_total'
wp option delete 'sportspress_player_performance_sections'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_sendoff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_sendoff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_sendoff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_sendoff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_assignments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_assignments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_assignments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_assignments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_order'"
