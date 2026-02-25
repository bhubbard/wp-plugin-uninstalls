#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'sportspress_primary_result'
wp option delete 'sportspress_event_reverse_teams'
wp option delete 'sportspress_event_result_columns'
wp option delete 'sportspress_event_teams_delimiter'
wp option delete 'sportspress_event_teams'
wp option delete 'lsfs_version'
wp option delete 'lsfs_scorers_information'
wp option delete 'lsfs_scorers_number'
wp option delete 'lsfs_enable_live_tables'
wp option delete 'sportspress_event_list_time_format'
wp option delete 'lsfs_active_integrations'
wp option delete 'lsfs_refresh_rate'
wp option delete 'lsfs_show_status'
wp option delete 'sportspress_widget_unique'
wp option delete 'sportspress_event_blocks_show_logos'
wp option delete 'sportspress_link_teams'
wp option delete 'sportspress_link_events'
wp option delete 'sportspress_event_blocks_paginated'
wp option delete 'sportspress_event_blocks_rows'
wp option delete 'sportspress_event_blocks_show_title'
wp option delete 'sportspress_event_blocks_show_league'
wp option delete 'sportspress_event_blocks_show_season'
wp option delete 'sportspress_event_blocks_show_venue'
wp option delete 'sportspress_event_list_show_logos'
wp option delete 'sportspress_link_venues'
wp option delete 'sportspress_abbreviate_teams'
wp option delete 'sportspress_enable_sortable_tables'
wp option delete 'sportspress_enable_scrollable_tables'
wp option delete 'sportspress_event_list_paginated'
wp option delete 'sportspress_event_list_rows'
wp option delete 'sportspress_event_list_show_title'
wp option delete 'sportspress_event_list_title_format'
wp option delete 'sportspress_event_show_results'
wp option delete 'sportspress_table_show_title'
wp option delete 'sportspress_table_show_logos'
wp option delete 'sportspress_enable_responsive_tables'
wp option delete 'sportspress_table_paginated'
wp option delete 'sportspress_table_rows'
wp option delete 'sportspress_link_players'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_lsfs_live_results_%' OR option_name LIKE '_site_transient_lsfs_live_results_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsfs_live_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsfs_live_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsfs_live_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsfs_live_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsfs_live_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsfs_live_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsfs_live_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsfs_live_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsfs_live'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsfs_live'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsfs_live'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsfs_live'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsfs_live_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsfs_live_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsfs_live_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsfs_live_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_result_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_result_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_result_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_result_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_current_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_current_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_current_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_current_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsfs_scorers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsfs_scorers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsfs_scorers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsfs_scorers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_live_scored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_live_scored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_live_scored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_live_scored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lsfs_in_scorers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lsfs_in_scorers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lsfs_in_scorers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lsfs_in_scorers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsfs_calendar_live'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsfs_calendar_live'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsfs_calendar_live'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsfs_calendar_live'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsfs_event_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsfs_event_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsfs_event_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsfs_event_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lsfs_config_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lsfs_config_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lsfs_config_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lsfs_config_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_highlight'"
