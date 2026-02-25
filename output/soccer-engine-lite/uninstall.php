<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daextsoenl_database_version');
delete_site_option('daextsoenl_database_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_header_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_header_border_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_header_font_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_body_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_body_border_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_body_font_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_pagination_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_pagination_border_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_pagination_font_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_pagination_disabled_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_pagination_disabled_border_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_pagination_disabled_font_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formation_field_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formation_field_line_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formation_field_line_stroke_width' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formation_field_player_number_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formation_field_player_number_border_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formation_field_player_number_font_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_formation_field_player_name_font_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_block_margin_top' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_block_margin_bottom' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_responsive_breakpoint_1' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_responsive_breakpoint_2' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_font_family' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_event_icon_goal_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_event_icon_yellow_card_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_event_icon_red_card_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_event_icon_substitution_left_arrow_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default_avatar_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default_avatar_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default_team_logo_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default_team_logo_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default_trophy_type_logo_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default_trophy_type_logo_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clock_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clock_secondary_ticks_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clock_border_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clock_overlay_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clock_extra_time_overlay_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('daextsoenl_table_header_background_color');
delete_site_option('daextsoenl_table_header_background_color');
delete_option('daextsoenl_table_header_border_color');
delete_site_option('daextsoenl_table_header_border_color');
delete_option('daextsoenl_table_header_font_color');
delete_site_option('daextsoenl_table_header_font_color');
delete_option('daextsoenl_table_body_background_color');
delete_site_option('daextsoenl_table_body_background_color');
delete_option('daextsoenl_table_body_border_color');
delete_site_option('daextsoenl_table_body_border_color');
delete_option('daextsoenl_table_body_font_color');
delete_site_option('daextsoenl_table_body_font_color');
delete_option('daextsoenl_table_pagination_background_color');
delete_site_option('daextsoenl_table_pagination_background_color');
delete_option('daextsoenl_table_pagination_border_color');
delete_site_option('daextsoenl_table_pagination_border_color');
delete_option('daextsoenl_table_pagination_font_color');
delete_site_option('daextsoenl_table_pagination_font_color');
delete_option('daextsoenl_table_pagination_disabled_background_color');
delete_site_option('daextsoenl_table_pagination_disabled_background_color');
delete_option('daextsoenl_table_pagination_disabled_border_color');
delete_site_option('daextsoenl_table_pagination_disabled_border_color');
delete_option('daextsoenl_table_pagination_disabled_font_color');
delete_site_option('daextsoenl_table_pagination_disabled_font_color');
delete_option('daextsoenl_formation_field_background_color');
delete_site_option('daextsoenl_formation_field_background_color');
delete_option('daextsoenl_formation_field_line_color');
delete_site_option('daextsoenl_formation_field_line_color');
delete_option('daextsoenl_formation_field_player_number_background_color');
delete_site_option('daextsoenl_formation_field_player_number_background_color');
delete_option('daextsoenl_formation_field_player_number_border_color');
delete_site_option('daextsoenl_formation_field_player_number_border_color');
delete_option('daextsoenl_formation_field_player_number_font_color');
delete_site_option('daextsoenl_formation_field_player_number_font_color');
delete_option('daextsoenl_formation_field_player_name_font_color');
delete_site_option('daextsoenl_formation_field_player_name_font_color');
delete_option('daextsoenl_clock_background_color');
delete_site_option('daextsoenl_clock_background_color');
delete_option('daextsoenl_clock_primary_ticks_color');
delete_site_option('daextsoenl_clock_primary_ticks_color');
delete_option('daextsoenl_clock_secondary_ticks_color');
delete_site_option('daextsoenl_clock_secondary_ticks_color');
delete_option('daextsoenl_clock_border_color');
delete_site_option('daextsoenl_clock_border_color');
delete_option('daextsoenl_clock_overlay_color');
delete_site_option('daextsoenl_clock_overlay_color');
delete_option('daextsoenl_clock_extra_time_overlay_color');
delete_site_option('daextsoenl_clock_extra_time_overlay_color');
delete_option('daextsoenl_event_icon_goal_color');
delete_site_option('daextsoenl_event_icon_goal_color');
delete_option('daextsoenl_event_icon_yellow_card_color');
delete_site_option('daextsoenl_event_icon_yellow_card_color');
delete_option('daextsoenl_event_icon_red_card_color');
delete_site_option('daextsoenl_event_icon_red_card_color');
delete_option('daextsoenl_event_icon_substitution_left_arrow_color');
delete_site_option('daextsoenl_event_icon_substitution_left_arrow_color');
delete_option('daextsoenl_event_icon_substitution_right_arrow_color');
delete_site_option('daextsoenl_event_icon_substitution_right_arrow_color');
delete_option('daextsoenl_default_avatar_color');
delete_site_option('daextsoenl_default_avatar_color');
delete_option('daextsoenl_default_avatar_background_color');
delete_site_option('daextsoenl_default_avatar_background_color');
delete_option('daextsoenl_default_team_logo_color');
delete_site_option('daextsoenl_default_team_logo_color');
delete_option('daextsoenl_default_team_logo_background_color');
delete_site_option('daextsoenl_default_team_logo_background_color');
delete_option('daextsoenl_default_competition_logo_color');
delete_site_option('daextsoenl_default_competition_logo_color');
delete_option('daextsoenl_default_competition_logo_background_color');
delete_site_option('daextsoenl_default_competition_logo_background_color');
delete_option('daextsoenl_default_trophy_type_logo_color');
delete_site_option('daextsoenl_default_trophy_type_logo_color');
delete_option('daextsoenl_default_trophy_type_logo_background_color');
delete_site_option('daextsoenl_default_trophy_type_logo_background_color');
delete_option('daextsoenl_money_format_decimal_separator');
delete_site_option('daextsoenl_money_format_decimal_separator');
delete_option('daextsoenl_money_format_thousands_separator');
delete_site_option('daextsoenl_money_format_thousands_separator');
delete_option('daextsoenl_money_format_decimals');
delete_site_option('daextsoenl_money_format_decimals');
delete_option('daextsoenl_money_format_simplify_million');
delete_site_option('daextsoenl_money_format_simplify_million');
delete_option('daextsoenl_money_format_simplify_million_decimals');
delete_site_option('daextsoenl_money_format_simplify_million_decimals');
delete_option('daextsoenl_money_format_million_symbol');
delete_site_option('daextsoenl_money_format_million_symbol');
delete_option('daextsoenl_money_format_simplify_thousands');
delete_site_option('daextsoenl_money_format_simplify_thousands');
delete_option('daextsoenl_money_format_simplify_thousands_decimals');
delete_site_option('daextsoenl_money_format_simplify_thousands_decimals');
delete_option('daextsoenl_money_format_thousands_symbol');
delete_site_option('daextsoenl_money_format_thousands_symbol');
delete_option('daextsoenl_money_format_currency');
delete_site_option('daextsoenl_money_format_currency');
delete_option('daextsoenl_money_format_currency_position');
delete_site_option('daextsoenl_money_format_currency_position');
delete_option('daextsoenl_height_measurement_unit');
delete_site_option('daextsoenl_height_measurement_unit');
delete_option('daextsoenl_set_max_execution_time');
delete_site_option('daextsoenl_set_max_execution_time');
delete_option('daextsoenl_max_execution_time_value');
delete_site_option('daextsoenl_max_execution_time_value');
delete_option('daextsoenl_set_memory_limit');
delete_site_option('daextsoenl_set_memory_limit');
delete_option('daextsoenl_memory_limit_value');
delete_site_option('daextsoenl_memory_limit_value');
delete_option('daextsoenl_transient_expiration');
delete_site_option('daextsoenl_transient_expiration');
delete_option('daextsoenl_formation_field_line_stroke_width');
delete_site_option('daextsoenl_formation_field_line_stroke_width');
delete_option('daextsoenl_block_margin_top');
delete_site_option('daextsoenl_block_margin_top');
delete_option('daextsoenl_block_margin_bottom');
delete_site_option('daextsoenl_block_margin_bottom');
delete_option('daextsoenl_responsive_breakpoint_1');
delete_site_option('daextsoenl_responsive_breakpoint_1');
delete_option('daextsoenl_responsive_breakpoint_2');
delete_site_option('daextsoenl_responsive_breakpoint_2');
delete_option('daextsoenl_font_family');
delete_site_option('daextsoenl_font_family');
delete_option('daextsoenl_google_font_url');
delete_site_option('daextsoenl_google_font_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_text_primary_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_clock_primary_ticks_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_event_icon_substitution_right_arrow_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default_competition_logo_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_default_competition_logo_background_color' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_google_font_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_height_measurement_unit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_decimal_separator' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_thousands_separator' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_decimals' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_simplify_million' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_simplify_million_decimals' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_million_symbol' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_simplify_thousands' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_simplify_thousands_decimals' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_thousands_symbol' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_currency' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_money_format_currency_position' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_set_max_execution_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_max_execution_time_value' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_set_memory_limit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_memory_limit_value' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_transient_expiration' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

