-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('playhq_date_format', 'playhq_time_format', 'playhq_api_key', 'playhq_team_id', 'playhq_organisation_id', 'playhq_filter', 'playhq_clean_team_names', 'playhq_enable_team_selector', 'playhq_selected_team_color', 'playhq_phq_tenant', 'playhq_table_header_bg', 'playhq_table_header_text', 'playhq_table_row_bg', 'playhq_table_row_alt_bg', 'playhq_table_text_color', 'playhq_table_border_style', 'playhq_table_border_weight', 'playhq_table_border_color', 'playhq_table_font_size', 'playhq_table_header_align', 'playhq_table_row_hover_bg', 'playhq_table_outer_border_style', 'playhq_table_outer_border_weight', 'playhq_table_outer_border_color', 'playhq_teams_list', 'playhq_season_id');

