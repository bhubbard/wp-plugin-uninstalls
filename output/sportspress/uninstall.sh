#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sportspress_primary_result'
wp option delete 'sportspress_event_minutes'
wp option delete 'sportspress_primary_performance'
wp option delete 'sportspress_admin_notices'
wp option delete 'sportspress_completed_setup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slug'"
wp option delete 'sportspress_player_columns'
wp option delete 'sportspress_event_teams_delimiter'
wp option delete 'sportspress_sport'
wp option delete 'sportspress_league'
wp option delete 'sportspress_season'
wp option delete '_sp_needs_welcome'
wp option delete 'sportspress_installed'
wp option delete 'sportspress_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sportspress_%'"
wp option delete 'sportspress_basic_setup'
wp option delete '_sp_needs_update'
wp option delete '_sp_needs_pages'
wp option delete 'sportspress_rich_editing'
wp option delete 'sportspress_lock_down_admin'
wp option delete 'sportspress_event_reverse_teams'
wp option delete 'sportspress_event_list_title_format'
wp option delete 'sportspress_event_list_time_format'
wp option delete 'sportspress_event_performance_show_minutes'
wp option delete 'sportspress_event_performance_columns'
wp option delete 'sportspress_event_show_player_numbers'
wp option delete 'sportspress_event_show_position'
wp option delete 'sportspress_event_performance_sections'
wp option delete 'sportspress_event_performance_stars_type'
wp option delete 'sportspress_event_hide_child_positions'
wp option delete 'sportspress_event_result_columns'
wp option delete 'sportspress_event_teams'
wp option delete 'sportspress_event_filter_teams_by_league'
wp option delete 'sportspress_event_filter_teams_by_season'
wp option delete 'sportspress_list_show_photos'
wp option delete 'sportspress_default_nationality'
wp option delete 'sportspress_player_performance_sections'
wp option delete 'sportspress_player_show_career_total'
wp option delete 'sportspress_table_show_logos'
wp option delete 'themeboy'
wp option delete 'sportspress_frontend_css_colors'
wp option delete 'sportspress_enable_frontend_css'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_module'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_template_order'"
wp option delete 'active_sitewide_plugins'
wp option delete 'sportspress_text'
wp option delete 'sportspress_default_country'
wp option delete 'sportspress_event_show_outcome'
wp option delete 'sportspress_custom_css'
wp option delete 'sportspress_table_text_align'
wp option delete 'sportspress_table_padding'
wp option delete 'sportspress_header_offset'
wp option delete 'sportspress_version'
wp option delete 'sportspress_frontend_css_primary'
wp option delete 'sportspress_frontend_css_background'
wp option delete 'sportspress_frontend_css_text'
wp option delete 'sportspress_frontend_css_heading'
wp option delete 'sportspress_frontend_css_link'
wp option delete 'sportspress_player_show_selector'
wp option delete 'sportspress_player_template_order'
wp option delete 'sportspress_staff_template_order'
wp option delete 'sportspress_frontend_styles'
wp option delete 'sportspress_event_show_timeline'
wp option delete 'sportspress_event_logos_show_team_names'
wp option delete 'sportspress_player_show_total'
wp option delete 'sportspress_registration_name_inputs'
wp option delete 'sportspress_registration_add_player'
wp option delete 'sportspress_load_individual_mode_module'
wp option delete 'sportspress_enable_responsive_tables'
wp option delete 'sportspress_link_events'
wp option delete 'sportspress_form_limit'
wp option delete 'sportspress_team_column_editing'
wp option delete 'sportspress_table_tiebreaker'
wp option delete 'sportspress_table_increment'
wp option delete 'sportspress_player_show_birthday'
wp option delete 'sportspress_player_show_age'
wp option delete 'sportspress_player_statistics_mode'
wp option delete 'sportspress_link_teams'
wp option delete 'sportspress_league_slug'
wp option delete 'sportspress_season_slug'
wp option delete 'sportspress_venue_slug'
wp option delete 'sportspress_position_slug'
wp option delete 'sportspress_role_slug'
wp option delete 'sportspress_event_slug'
wp option delete 'sportspress_event_comment_status'
wp option delete 'sportspress_team_slug'
wp option delete 'sportspress_team_comment_status'
wp option delete 'sportspress_player_slug'
wp option delete 'sportspress_staff_slug'
wp option delete 'recently_activated'
wp option delete 'sportspress_event_show_venue'
wp option delete 'sportspress_event_show_maps'
wp option delete 'sportspress_event_show_results'
wp option delete 'sportspress_team_show_logo'
wp option delete 'sportspress_player_show_photo'
wp option delete 'sportspress_staff_show_photo'
wp option delete 'sportspress_widget_unique'
wp option delete 'sportspress_staff_show_birthday'
wp option delete 'sportspress_staff_show_age'
wp option delete 'sportspress_calendar_slug'
wp option delete 'sportspress_load_calendars_module'
wp option delete 'sportspress_event_player_sort'
wp option delete 'sportspress_table_slug'
wp option delete 'sportspress_load_league_tables_module'
wp option delete 'sportspress_table_next_team_filter_league'
wp option delete 'sportspress_duty_slug'
wp option delete 'sportspress_official_slug'
wp option delete 'sportspress_load_officials_module'
wp option delete 'sportspress_list_slug'
wp option delete 'sportspress_load_player_lists_module'
wp option delete 'sportspress_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_template'"
wp option delete 'sportspress_load_tutorials_module'
wp option delete 'sportspress_registration_team_select'
wp option delete 'sportspress_link_players'
wp option delete 'sportspress_link_staff'
wp option delete 'sportspress_enable_live_countdowns'
wp option delete 'sportspress_link_venues'
wp option delete 'sportspress_countdown_show_logos'
wp option delete 'sportspress_countdown_show_thumbnail'
wp option delete 'sportspress_event_blocks_show_logos'
wp option delete 'sportspress_event_blocks_paginated'
wp option delete 'sportspress_event_blocks_rows'
wp option delete 'sportspress_event_blocks_show_title'
wp option delete 'sportspress_event_blocks_show_league'
wp option delete 'sportspress_event_blocks_show_season'
wp option delete 'sportspress_event_blocks_show_matchday'
wp option delete 'sportspress_event_blocks_show_venue'
wp option delete 'sportspress_event_show_details'
wp option delete 'sportspress_enable_scrollable_tables'
wp option delete 'sportspress_event_show_date'
wp option delete 'sportspress_event_show_time'
wp option delete 'sportspress_event_show_day'
wp option delete 'sportspress_event_show_full_time'
wp option delete 'sportspress_event_list_show_logos'
wp option delete 'sportspress_enable_sortable_tables'
wp option delete 'sportspress_event_list_paginated'
wp option delete 'sportspress_event_list_rows'
wp option delete 'sportspress_event_list_show_title'
wp option delete 'sportspress_event_show_logos'
wp option delete 'sportspress_event_logos_format'
wp option delete 'sportspress_event_logos_show_time'
wp option delete 'sportspress_event_logos_show_results'
wp option delete 'sportspress_link_officials'
wp option delete 'sportspress_event_officials_format'
wp option delete 'sportspress_event_show_players'
wp option delete 'sportspress_event_show_staff'
wp option delete 'sportspress_event_show_total'
wp option delete 'sportspress_event_total_performance'
wp option delete 'sportspress_event_performance_mode'
wp option delete 'sportspress_table_show_title'
wp option delete 'sportspress_table_paginated'
wp option delete 'sportspress_table_rows'
wp option delete 'sportspress_official_show_details'
wp option delete 'sportspress_official_show_number'
wp option delete 'sportspress_official_show_name'
wp option delete 'sportspress_official_show_nationality'
wp option delete 'sportspress_official_show_positions'
wp option delete 'sportspress_official_show_current_teams'
wp option delete 'sportspress_official_show_past_teams'
wp option delete 'sportspress_official_show_leagues'
wp option delete 'sportspress_official_show_seasons'
wp option delete 'sportspress_official_show_flags'
wp option delete 'sportspress_player_show_details'
wp option delete 'sportspress_player_show_number'
wp option delete 'sportspress_player_show_name'
wp option delete 'sportspress_player_show_nationality'
wp option delete 'sportspress_player_show_positions'
wp option delete 'sportspress_player_show_current_teams'
wp option delete 'sportspress_player_show_past_teams'
wp option delete 'sportspress_player_show_leagues'
wp option delete 'sportspress_player_show_seasons'
wp option delete 'sportspress_player_show_flags'
wp option delete 'sportspress_player_events_format'
wp option delete 'sportspress_list_show_title'
wp option delete 'sportspress_list_show_flags'
wp option delete 'sportspress_list_team_format'
wp option delete 'sportspress_list_paginated'
wp option delete 'sportspress_list_rows'

# Delete Transients
wp transient delete '_sp_activation_redirect'
wp transient delete 'sportspress_contributors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_minutes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sp_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_sample'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_sample'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_sample'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_sample'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_preset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_preset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_preset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_preset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_nationality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_nationality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_nationality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_nationality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_current_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_current_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_current_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_current_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_past_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_past_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_past_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_past_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_leagues'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_leagues'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_leagues'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_leagues'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_statistics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_statistics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_statistics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_statistics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_players'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_highlight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_grouping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_grouping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_grouping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_grouping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_orderby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_orderby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_orderby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_orderby'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_first'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_first'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_first'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_first'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_abbreviation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_abbreviation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_abbreviation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_abbreviation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_equation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_equation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_equation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_equation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_singular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_precision'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_precision'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_precision'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_precision'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_timed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_timed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_timed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_timed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_import'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_short_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_short_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_short_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_short_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_past'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_past'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_past'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_past'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_future'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_future'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_future'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_future'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_date_relative'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_date_relative'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_date_relative'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_date_relative'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_event_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_event_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_event_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_event_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_main_league'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_main_league'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_main_league'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_main_league'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_current_season'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_current_season'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_current_season'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_current_season'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_officials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_officials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_officials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_officials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_timeline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_stars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_stars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_stars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_stars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_offense'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_offense'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_offense'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_offense'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_defense'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_defense'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_defense'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_defense'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_result_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_result_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_result_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_result_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_specs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_specs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_specs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_specs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_adjustments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_era'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_era'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_era'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_era'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_crop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_crop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_crop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_crop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_sendoff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_sendoff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_sendoff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_sendoff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_metrics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_metrics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_metrics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_metrics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_teams'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_event_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_event_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_event_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_event_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_staff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_staff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_staff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_staff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_calculate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_calculate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_calculate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_calculate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sp_bulk'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sp_bulk'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sp_bulk'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sp_bulk'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_assignments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_assignments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_assignments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_assignments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
