<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('playhq_date_format');
delete_site_option('playhq_date_format');
delete_option('playhq_time_format');
delete_site_option('playhq_time_format');
delete_option('playhq_api_key');
delete_site_option('playhq_api_key');
delete_option('playhq_team_id');
delete_site_option('playhq_team_id');
delete_option('playhq_organisation_id');
delete_site_option('playhq_organisation_id');
delete_option('playhq_filter');
delete_site_option('playhq_filter');
delete_option('playhq_clean_team_names');
delete_site_option('playhq_clean_team_names');
delete_option('playhq_enable_team_selector');
delete_site_option('playhq_enable_team_selector');
delete_option('playhq_selected_team_color');
delete_site_option('playhq_selected_team_color');
delete_option('playhq_phq_tenant');
delete_site_option('playhq_phq_tenant');
delete_option('playhq_table_header_bg');
delete_site_option('playhq_table_header_bg');
delete_option('playhq_table_header_text');
delete_site_option('playhq_table_header_text');
delete_option('playhq_table_row_bg');
delete_site_option('playhq_table_row_bg');
delete_option('playhq_table_row_alt_bg');
delete_site_option('playhq_table_row_alt_bg');
delete_option('playhq_table_text_color');
delete_site_option('playhq_table_text_color');
delete_option('playhq_table_border_style');
delete_site_option('playhq_table_border_style');
delete_option('playhq_table_border_weight');
delete_site_option('playhq_table_border_weight');
delete_option('playhq_table_border_color');
delete_site_option('playhq_table_border_color');
delete_option('playhq_table_font_size');
delete_site_option('playhq_table_font_size');
delete_option('playhq_table_header_align');
delete_site_option('playhq_table_header_align');
delete_option('playhq_table_row_hover_bg');
delete_site_option('playhq_table_row_hover_bg');
delete_option('playhq_table_outer_border_style');
delete_site_option('playhq_table_outer_border_style');
delete_option('playhq_table_outer_border_weight');
delete_site_option('playhq_table_outer_border_weight');
delete_option('playhq_table_outer_border_color');
delete_site_option('playhq_table_outer_border_color');
delete_option('playhq_teams_list');
delete_site_option('playhq_teams_list');
delete_option('playhq_season_id');
delete_site_option('playhq_season_id');

