#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daextsoenl_database_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_header_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_header_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_header_font_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_body_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_body_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_body_font_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_pagination_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_pagination_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_pagination_font_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_pagination_disabled_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_pagination_disabled_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_pagination_disabled_font_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formation_field_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formation_field_line_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formation_field_line_stroke_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formation_field_player_number_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formation_field_player_number_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formation_field_player_number_font_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_formation_field_player_name_font_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_block_margin_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_block_margin_bottom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_responsive_breakpoint_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_responsive_breakpoint_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_font_family'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_icon_goal_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_icon_yellow_card_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_icon_red_card_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_icon_substitution_left_arrow_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_avatar_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_avatar_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_team_logo_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_team_logo_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_trophy_type_logo_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_trophy_type_logo_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clock_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clock_secondary_ticks_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clock_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clock_overlay_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clock_extra_time_overlay_color'"
wp option delete 'daextsoenl_table_header_background_color'
wp option delete 'daextsoenl_table_header_border_color'
wp option delete 'daextsoenl_table_header_font_color'
wp option delete 'daextsoenl_table_body_background_color'
wp option delete 'daextsoenl_table_body_border_color'
wp option delete 'daextsoenl_table_body_font_color'
wp option delete 'daextsoenl_table_pagination_background_color'
wp option delete 'daextsoenl_table_pagination_border_color'
wp option delete 'daextsoenl_table_pagination_font_color'
wp option delete 'daextsoenl_table_pagination_disabled_background_color'
wp option delete 'daextsoenl_table_pagination_disabled_border_color'
wp option delete 'daextsoenl_table_pagination_disabled_font_color'
wp option delete 'daextsoenl_formation_field_background_color'
wp option delete 'daextsoenl_formation_field_line_color'
wp option delete 'daextsoenl_formation_field_player_number_background_color'
wp option delete 'daextsoenl_formation_field_player_number_border_color'
wp option delete 'daextsoenl_formation_field_player_number_font_color'
wp option delete 'daextsoenl_formation_field_player_name_font_color'
wp option delete 'daextsoenl_clock_background_color'
wp option delete 'daextsoenl_clock_primary_ticks_color'
wp option delete 'daextsoenl_clock_secondary_ticks_color'
wp option delete 'daextsoenl_clock_border_color'
wp option delete 'daextsoenl_clock_overlay_color'
wp option delete 'daextsoenl_clock_extra_time_overlay_color'
wp option delete 'daextsoenl_event_icon_goal_color'
wp option delete 'daextsoenl_event_icon_yellow_card_color'
wp option delete 'daextsoenl_event_icon_red_card_color'
wp option delete 'daextsoenl_event_icon_substitution_left_arrow_color'
wp option delete 'daextsoenl_event_icon_substitution_right_arrow_color'
wp option delete 'daextsoenl_default_avatar_color'
wp option delete 'daextsoenl_default_avatar_background_color'
wp option delete 'daextsoenl_default_team_logo_color'
wp option delete 'daextsoenl_default_team_logo_background_color'
wp option delete 'daextsoenl_default_competition_logo_color'
wp option delete 'daextsoenl_default_competition_logo_background_color'
wp option delete 'daextsoenl_default_trophy_type_logo_color'
wp option delete 'daextsoenl_default_trophy_type_logo_background_color'
wp option delete 'daextsoenl_money_format_decimal_separator'
wp option delete 'daextsoenl_money_format_thousands_separator'
wp option delete 'daextsoenl_money_format_decimals'
wp option delete 'daextsoenl_money_format_simplify_million'
wp option delete 'daextsoenl_money_format_simplify_million_decimals'
wp option delete 'daextsoenl_money_format_million_symbol'
wp option delete 'daextsoenl_money_format_simplify_thousands'
wp option delete 'daextsoenl_money_format_simplify_thousands_decimals'
wp option delete 'daextsoenl_money_format_thousands_symbol'
wp option delete 'daextsoenl_money_format_currency'
wp option delete 'daextsoenl_money_format_currency_position'
wp option delete 'daextsoenl_height_measurement_unit'
wp option delete 'daextsoenl_set_max_execution_time'
wp option delete 'daextsoenl_max_execution_time_value'
wp option delete 'daextsoenl_set_memory_limit'
wp option delete 'daextsoenl_memory_limit_value'
wp option delete 'daextsoenl_transient_expiration'
wp option delete 'daextsoenl_formation_field_line_stroke_width'
wp option delete 'daextsoenl_block_margin_top'
wp option delete 'daextsoenl_block_margin_bottom'
wp option delete 'daextsoenl_responsive_breakpoint_1'
wp option delete 'daextsoenl_responsive_breakpoint_2'
wp option delete 'daextsoenl_font_family'
wp option delete 'daextsoenl_google_font_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_primary_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clock_primary_ticks_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_event_icon_substitution_right_arrow_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_competition_logo_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_competition_logo_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height_measurement_unit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_decimal_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_thousands_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_decimals'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_simplify_million'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_simplify_million_decimals'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_million_symbol'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_simplify_thousands'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_simplify_thousands_decimals'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_thousands_symbol'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_currency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_money_format_currency_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_set_max_execution_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_max_execution_time_value'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_set_memory_limit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_memory_limit_value'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_transient_expiration'"

