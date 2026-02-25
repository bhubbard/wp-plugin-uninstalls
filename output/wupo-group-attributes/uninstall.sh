#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_wugrat_settings_tab_styling_text_color_odd_row'
wp option delete 'wc_wugrat_settings_tab_general_enable_wugrat'
wp option delete 'wc_wugrat_settings_tab_styling_layout'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wugrat_group_order'
wp option delete 'wc_wugrat_settings_tab_general_position_single_attributes'
wp option delete 'wc_wugrat_settings_tab_general_single_attributes_label'
wp option delete 'wc_wugrat_settings_tab_general_position_dimension_attributes'
wp option delete 'wc_wugrat_settings_tab_general_dimension_attributes_label'
wp option delete 'wc_wugrat_settings_tab_styling_enable_customize_attribute_table_color'
wp option delete 'wc_wugrat_settings_tab_styling_background_color_odd_row'
wp option delete 'wc_wugrat_settings_tab_styling_text_color_even_row'
wp option delete 'wc_wugrat_settings_tab_styling_background_color_even_row'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

