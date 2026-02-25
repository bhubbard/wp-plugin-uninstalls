<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_wugrat_settings_tab_styling_text_color_odd_row');
delete_site_option('wc_wugrat_settings_tab_styling_text_color_odd_row');
delete_option('wc_wugrat_settings_tab_general_enable_wugrat');
delete_site_option('wc_wugrat_settings_tab_general_enable_wugrat');
delete_option('wc_wugrat_settings_tab_styling_layout');
delete_site_option('wc_wugrat_settings_tab_styling_layout');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('wugrat_group_order');
delete_site_option('wugrat_group_order');
delete_option('wc_wugrat_settings_tab_general_position_single_attributes');
delete_site_option('wc_wugrat_settings_tab_general_position_single_attributes');
delete_option('wc_wugrat_settings_tab_general_single_attributes_label');
delete_site_option('wc_wugrat_settings_tab_general_single_attributes_label');
delete_option('wc_wugrat_settings_tab_general_position_dimension_attributes');
delete_site_option('wc_wugrat_settings_tab_general_position_dimension_attributes');
delete_option('wc_wugrat_settings_tab_general_dimension_attributes_label');
delete_site_option('wc_wugrat_settings_tab_general_dimension_attributes_label');
delete_option('wc_wugrat_settings_tab_styling_enable_customize_attribute_table_color');
delete_site_option('wc_wugrat_settings_tab_styling_enable_customize_attribute_table_color');
delete_option('wc_wugrat_settings_tab_styling_background_color_odd_row');
delete_site_option('wc_wugrat_settings_tab_styling_background_color_odd_row');
delete_option('wc_wugrat_settings_tab_styling_text_color_even_row');
delete_site_option('wc_wugrat_settings_tab_styling_text_color_even_row');
delete_option('wc_wugrat_settings_tab_styling_background_color_even_row');
delete_site_option('wc_wugrat_settings_tab_styling_background_color_even_row');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

