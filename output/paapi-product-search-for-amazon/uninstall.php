<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psfa_access_key_id');
delete_site_option('psfa_access_key_id');
delete_option('psfa_secret_access_key');
delete_site_option('psfa_secret_access_key');
delete_option('psfa_associate_tag');
delete_site_option('psfa_associate_tag');
delete_option('psfa_button_text');
delete_site_option('psfa_button_text');
delete_option('psfa_button_border_radius');
delete_site_option('psfa_button_border_radius');
delete_option('psfa_button_font_size');
delete_site_option('psfa_button_font_size');
delete_option('psfa_button_font_weight');
delete_site_option('psfa_button_font_weight');
delete_option('psfa_card_layout');
delete_site_option('psfa_card_layout');
delete_option('psfa_title_font');
delete_site_option('psfa_title_font');
delete_option('psfa_description_font');
delete_site_option('psfa_description_font');
delete_option('psfa_price_font');
delete_site_option('psfa_price_font');
delete_option('psfa_theme_colors');
delete_site_option('psfa_theme_colors');
delete_option('psfa_hide_category_banner');
delete_site_option('psfa_hide_category_banner');
delete_option('psfa_filter_visibility');
delete_site_option('psfa_filter_visibility');
delete_option('psfa_display_mode');
delete_site_option('psfa_display_mode');
delete_option('psfa_auth_type');
delete_site_option('psfa_auth_type');
delete_option('psfa_oauth_client_id');
delete_site_option('psfa_oauth_client_id');
delete_option('psfa_oauth_client_secret');
delete_site_option('psfa_oauth_client_secret');
delete_option('psfa_oauth_credential_version');
delete_site_option('psfa_oauth_credential_version');
delete_option('psfa_oauth_auth_region');
delete_site_option('psfa_oauth_auth_region');
delete_option('psfa_marketplace');
delete_site_option('psfa_marketplace');
delete_option('psfa_features');
delete_site_option('psfa_features');
delete_option('psfa_selected_theme');
delete_site_option('psfa_selected_theme');
delete_option('psfa_hide_search');
delete_site_option('psfa_hide_search');
delete_option('psfa_hide_filters');
delete_site_option('psfa_hide_filters');
delete_option('psfa_oauth_access_token');
delete_site_option('psfa_oauth_access_token');
delete_option('psfa_oauth_token_expires');
delete_site_option('psfa_oauth_token_expires');
delete_option('psfa_button_bg_color');
delete_site_option('psfa_button_bg_color');
delete_option('psfa_button_text_color');
delete_site_option('psfa_button_text_color');
delete_option('psfa_white_label');
delete_site_option('psfa_white_label');
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

