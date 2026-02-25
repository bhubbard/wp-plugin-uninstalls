<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aump_posts_per_page');
delete_site_option('aump_posts_per_page');
delete_option('aump_auto_scroll');
delete_site_option('aump_auto_scroll');
delete_option('aump_open_in_popup');
delete_site_option('aump_open_in_popup');
delete_option('aump_thumbnail_size');
delete_site_option('aump_thumbnail_size');
delete_option('aump_desc_word_limit');
delete_site_option('aump_desc_word_limit');
delete_option('aump_show_open_button');
delete_site_option('aump_show_open_button');
delete_option('aump_open_button_text');
delete_site_option('aump_open_button_text');
delete_option('aump_show_title');
delete_site_option('aump_show_title');
delete_option('aump_show_description');
delete_site_option('aump_show_description');
delete_option('aump_enable_category_filter');
delete_site_option('aump_enable_category_filter');
delete_option('aump_load_more_button_text');
delete_site_option('aump_load_more_button_text');
delete_option('aump_show_load_more_button');
delete_site_option('aump_show_load_more_button');
delete_option('aump_enable_featured_image_on_popup');
delete_site_option('aump_enable_featured_image_on_popup');
delete_option('aump_category_filter_bg');
delete_site_option('aump_category_filter_bg');
delete_option('aump_category_filter_text_colour');
delete_site_option('aump_category_filter_text_colour');
delete_option('aump_columns');
delete_site_option('aump_columns');
delete_option('aump_grid_border_clr');
delete_site_option('aump_grid_border_clr');
delete_option('aump_open_button_bg');
delete_site_option('aump_open_button_bg');
delete_option('aump_open_button_text_color');
delete_site_option('aump_open_button_text_color');
delete_option('aump_title_color');
delete_site_option('aump_title_color');
delete_option('aump_title_bg');
delete_site_option('aump_title_bg');
delete_option('aump_desc_color');
delete_site_option('aump_desc_color');
delete_option('aump_desc_bg');
delete_site_option('aump_desc_bg');
delete_option('aump_next_text');
delete_site_option('aump_next_text');
delete_option('aump_next_prev_bg');
delete_site_option('aump_next_prev_bg');
delete_option('aump_next_prev_text_color');
delete_site_option('aump_next_prev_text_color');
delete_option('aump_prev_text');
delete_site_option('aump_prev_text');
delete_option('aump_close_text_color');
delete_site_option('aump_close_text_color');
delete_option('aump_close_bg');
delete_site_option('aump_close_bg');
delete_option('aump_popup_width');
delete_site_option('aump_popup_width');
delete_option('aump_load_more_button_bg');
delete_site_option('aump_load_more_button_bg');
delete_option('aump_load_more_button_text_color');
delete_site_option('aump_load_more_button_text_color');
delete_option('aump_grid_image_height_desktop');
delete_site_option('aump_grid_image_height_desktop');
delete_option('aump_grid_image_height_mobile');
delete_site_option('aump_grid_image_height_mobile');
delete_option('aump_hide_title_on_popup');
delete_site_option('aump_hide_title_on_popup');
delete_option('aump_hide_categories_on_popup');
delete_site_option('aump_hide_categories_on_popup');
delete_option('aump_popup_bg_color');
delete_site_option('aump_popup_bg_color');
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

