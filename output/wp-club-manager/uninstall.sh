#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcm_google_map_api'
wp option delete 'wpcm_map_select'
wp option delete 'wpcm_match_clubs_separator'
wp option delete 'wpcm_match_goals_delimiter'
wp option delete 'wpcm_standings_columns_display'
wp option delete 'wpcm_standings_order'
wp option delete 'wpclubmanager_meta_box_errors'
wp option delete 'wpcm_match_show_report'
wp option delete 'wpcm_match_show_preview'
wp option delete 'wpclubmanager_version'
wp option delete 'wpcm_sport'
wp option delete 'wpcm_version_upgraded_from'
wp option delete 'wpclubmanager_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slug'"
wp option delete 'wpcm_player_profile_show_number'
wp option delete 'wpcm_player_profile_show_nationality'
wp option delete 'wpcm_player_profile_show_age'
wp option delete 'wpcm_staff_profile_show_nationality'
wp option delete 'wpcm_staff_profile_show_age'
wp option delete 'wpcm_show_staff_email'
wp option delete 'wpcm_show_staff_phone'
wp option delete 'wpcm_referee_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcm_show_stats_%'"
wp option delete 'wpcm_primary_result'
wp option delete 'wpcm_mode'
wp option delete 'wpcm_default_country'
wp option delete 'wpcm_default_club'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_term_%'"
wp option delete 'wpclubmanager_lock_down_admin'
wp option delete 'wpclubmanager_admin_footer_text_rated'
wp option delete 'wpcm_match_time'
wp option delete 'wpcm_results_show_attendance'
wp option delete 'wpcm_results_show_referee'
wp option delete 'wpcm_lineup_show_shirt_numbers'
wp option delete 'wpcm_match_box_scores'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpclubmanager_status_options'
wp option delete 'wpcm_transient_keys'
wp option delete 'wpclubmanager_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp option delete 'wpclubmanager_player_slug'
wp option delete 'wpclubmanager_staff_slug'
wp option delete 'wpclubmanager_match_slug'
wp option delete 'wpcm_map_zoom'
wp option delete 'wpcm_map_type'
wp option delete 'recently_activated'
wp option delete 'wpcm_disable_cache'
wp option delete 'wpcm_osm_layer'
wp option delete 'wpcm_mapbox_api'
wp option delete 'wpcm_mapbox_type'
wp option delete 'wpcm_player_profile_show_appearances'
wp option delete 'wpcm_player_profile_show_goals'
wp option delete 'wpcm_player_profile_show_assists'
wp option delete 'wpcm_player_profile_show_yellowcards'
wp option delete 'wpcm_player_profile_show_redcards'
wp option delete 'wpcm_player_profile_show_ratings'
wp option delete 'wpcm_player_profile_show_mvp'
wp option delete 'wpcm_player_goals_label'
wp option delete 'wpcm_player_assists_label'
wp option delete 'wpcm_player_yellowcards_label'
wp option delete 'wpcm_player_redcards_label'
wp option delete 'wpcm_player_rating_label'
wp option delete 'wpcm_player_ratings_label'
wp option delete 'wpcm_player_mvp_label'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcm_match_show_stats_%'"
wp option delete 'wpcm_install_date'
wp option delete 'wpcm_rating'
wp option delete 'wpcm_match_duration'
wp option delete 'wpcm_name_format'
wp option delete 'wpcm_club_settings_formed'
wp option delete 'wpcm_club_settings_colors'
wp option delete 'wpcm_club_settings_honors'
wp option delete 'wpcm_club_settings_website'
wp option delete 'wpcm_club_settings_venue'
wp option delete 'wpcm_club_settings_h2h'
wp option delete 'wpcm_club_settings_matches'
wp option delete 'wpcm_standings_orderby'
wp option delete 'wpcm_standings_priority_order'
wp option delete 'wpcm_standings_orderby_2'
wp option delete 'wpcm_standings_priority_order_2'
wp option delete 'wpcm_standings_orderby_3'
wp option delete 'wpcm_standings_priority_order_3'
wp option delete '_wpcm_needs_welcome'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'wpcm_match_title_format'
wp option delete 'wpclubmanager_club_slug'
wp option delete 'wpcm_hide_scores'
wp option delete 'wpcm_standings_draw_points'
wp option delete 'wpcm_standings_otw_points'
wp option delete 'wpcm_standings_otl_points'
wp option delete 'wpcm_standings_win_points'
wp option delete 'wpcm_standings_loss_points'
wp option delete 'wpcm_staff_profile_show_dob'
wp option delete 'wpcm_staff_profile_show_season'
wp option delete 'wpcm_staff_profile_show_team'
wp option delete 'wpcm_staff_profile_show_jobs'
wp option delete 'wpcm_staff_profile_show_hometown'
wp option delete 'wpcm_staff_profile_show_joined'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'wpclubmanager_extensions_data'
wp transient delete '_wpcm_activation_redirect'
wp transient delete 'wpclubmanager_license_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_home_club'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_home_club'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_home_club'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_home_club'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_away_club'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_away_club'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_away_club'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_away_club'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_neutral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_neutral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_neutral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_neutral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_comp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_comp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_comp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_comp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_roster_players'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_roster_players'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_roster_players'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_roster_players'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_roster_staff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_roster_staff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_roster_staff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_roster_staff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_table_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_table_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_table_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_table_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_table_clubs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_table_clubs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_table_clubs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_table_clubs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_table_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_table_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_table_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_table_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_played'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_played'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_played'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_played'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_referee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_referee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_referee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_referee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_attendance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_attendance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_attendance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_attendance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_friendly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_friendly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_friendly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_friendly'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_postponed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_postponed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_postponed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_postponed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_lastname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_player_club'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_player_club'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_player_club'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_player_club'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_natl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_natl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_natl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_natl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_dob'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_dob'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_dob'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_dob'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_staff_club'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_staff_club'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_staff_club'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_staff_club'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_staff_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_staff_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_staff_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_staff_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_staff_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_staff_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_staff_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_staff_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_home_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_home_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_home_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_home_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_away_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_away_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_away_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_away_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_import'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_players'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_players'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_players'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_players'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_hometown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_hometown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_hometown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_hometown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_prevclubs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_prevclubs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_prevclubs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_prevclubs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_club_abbr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_club_abbr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_club_abbr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_club_abbr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_club_formed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_club_formed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_club_formed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_club_formed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_club_primary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_club_primary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_club_primary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_club_primary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_club_secondary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_club_secondary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_club_secondary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_club_secondary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_club_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_club_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_club_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_club_website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_club_honours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_club_honours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_club_honours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_club_honours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_club_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_club_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_club_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_club_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_match_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_match_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_match_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_match_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_match_captain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_match_captain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_match_captain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_match_captain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_match_subs_not_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_match_subs_not_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_match_subs_not_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_match_subs_not_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_walkover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_walkover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_walkover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_walkover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_match_runs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_match_runs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_match_runs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_match_runs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_match_extras'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_match_extras'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_match_extras'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_match_extras'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_match_wickets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_match_wickets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_match_wickets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_match_wickets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_match_overs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_match_overs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_match_overs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_match_overs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_cricket_outcome'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_cricket_outcome'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_cricket_outcome'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_cricket_outcome'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_overtime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_overtime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_overtime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_overtime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_shootout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_shootout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_shootout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_shootout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_shootout_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_shootout_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_shootout_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_shootout_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_bonus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_bonus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_bonus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_bonus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_gaa_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_gaa_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_gaa_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_gaa_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_gaa_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_gaa_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_gaa_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_gaa_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_home_bonus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_home_bonus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_home_bonus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_home_bonus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_away_bonus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_away_bonus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_away_bonus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_away_bonus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_home_shootout_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_home_shootout_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_home_shootout_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_home_shootout_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_away_shootout_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_away_shootout_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_away_shootout_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_away_shootout_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_home_gaa_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_home_gaa_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_home_gaa_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_home_gaa_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_away_gaa_goals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_away_gaa_goals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_away_gaa_goals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_away_gaa_goals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_home_gaa_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_home_gaa_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_home_gaa_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_home_gaa_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_away_gaa_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_away_gaa_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_away_gaa_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_away_gaa_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_custom_player_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_custom_player_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_custom_player_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_custom_player_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_link_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_link_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_link_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_link_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linked_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linked_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linked_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linked_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_link_nw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_link_nw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_link_nw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_link_nw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcm_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcm_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcm_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcm_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcm_staff_hometown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcm_staff_hometown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcm_staff_hometown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcm_staff_hometown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
