#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sportspress_link_events'
wp option delete 'sportspress_form_limit'
wp option delete 'sportspress_team_column_editing'
wp option delete 'sportspress_event_minutes'
wp option delete 'sportspress_table_show_title'
wp option delete 'sportspress_table_show_logos'
wp option delete 'sportspress_enable_responsive_tables'
wp option delete 'sportspress_enable_sortable_tables'
wp option delete 'sportspress_enable_scrollable_tables'
wp option delete 'sportspress_table_paginated'
wp option delete 'sportspress_table_rows'
wp option delete 'sportspress_link_players'
wp option delete 'sportspress_link_teams'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sah2h_criteria'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sah2h_criteria'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sah2h_criteria'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sah2h_criteria'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sah2h_column_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sah2h_column_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sah2h_column_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sah2h_column_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sah2h_tiebreak_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sah2h_tiebreak_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sah2h_tiebreak_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sah2h_tiebreak_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_orderby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_orderby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_orderby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_orderby'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_relative'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_relative'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_relative'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_relative'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_past'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_past'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_past'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_past'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_event_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_event_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_event_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_event_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_abbreviation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_abbreviation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_abbreviation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_abbreviation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_highlight'"
