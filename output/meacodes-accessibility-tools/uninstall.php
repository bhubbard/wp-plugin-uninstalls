<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('meaAccessibility_header_text');
delete_site_option('meaAccessibility_header_text');
delete_option('meaAccessibility_labels_color');
delete_site_option('meaAccessibility_labels_color');
delete_option('meaAccessibility_status_plugin');
delete_site_option('meaAccessibility_status_plugin');
delete_option('meaAccessibility_button_size');
delete_site_option('meaAccessibility_button_size');
delete_option('meaAccessibility_button_border_radius');
delete_site_option('meaAccessibility_button_border_radius');
delete_option('meaAccessibility_button_margin');
delete_site_option('meaAccessibility_button_margin');
delete_option('meaAccessibility_button_icon_size');
delete_site_option('meaAccessibility_button_icon_size');
delete_option('meaAccessibility_selected_position');
delete_site_option('meaAccessibility_selected_position');
delete_option('meaAccessibility_plugin_logo_color');
delete_site_option('meaAccessibility_plugin_logo_color');
delete_option('meaAccessibility_enable_movable_plugin');
delete_site_option('meaAccessibility_enable_movable_plugin');
delete_option('meaAccessibility_privacy_notice_Fe');
delete_site_option('meaAccessibility_privacy_notice_Fe');
delete_option('meaAccessibility_font_size_Fe');
delete_site_option('meaAccessibility_font_size_Fe');
delete_option('meaAccessibility_line_height_Fe');
delete_site_option('meaAccessibility_line_height_Fe');
delete_option('meaAccessibility_letter_spacing_Fe');
delete_site_option('meaAccessibility_letter_spacing_Fe');
delete_option('meaAccessibility_dyslexia_mask_Fe');
delete_site_option('meaAccessibility_dyslexia_mask_Fe');
delete_option('meaAccessibility_grayscale_page_Fe');
delete_site_option('meaAccessibility_grayscale_page_Fe');
delete_option('meaAccessibility_contrast_Fe');
delete_site_option('meaAccessibility_contrast_Fe');
delete_option('meaAccessibility_negativ_Fe');
delete_site_option('meaAccessibility_negativ_Fe');
delete_option('meaAccessibility_underlined_links_Fe');
delete_site_option('meaAccessibility_underlined_links_Fe');
delete_option('meaAccessibility_highlight_links_Fe');
delete_site_option('meaAccessibility_highlight_links_Fe');
delete_option('meaAccessibility_grayscale_images_Fe');
delete_site_option('meaAccessibility_grayscale_images_Fe');
delete_option('meaAccessibility_black_white_Fe');
delete_site_option('meaAccessibility_black_white_Fe');
delete_option('meaAccessibility_copyright_text');
delete_site_option('meaAccessibility_copyright_text');
delete_option('meaAccessibility_background_color');
delete_site_option('meaAccessibility_background_color');
delete_option('meaAccessibility_divider_line_color');
delete_site_option('meaAccessibility_divider_line_color');
delete_option('meaAccessibility_accent_color');
delete_site_option('meaAccessibility_accent_color');
delete_option('meaAccessibility_buttons_hover_color');
delete_site_option('meaAccessibility_buttons_hover_color');
delete_option('meaAccessibility_buttons_color');
delete_site_option('meaAccessibility_buttons_color');
delete_option('meacodes_quickscan_max_pages');
delete_site_option('meacodes_quickscan_max_pages');
delete_option('meacodes_quickscan_delay_between_requests');
delete_site_option('meacodes_quickscan_delay_between_requests');
delete_option('meacodes_quickscan_scan_timeout');
delete_site_option('meacodes_quickscan_scan_timeout');
delete_option('meacodes_scan_last_error');
delete_site_option('meacodes_scan_last_error');
delete_option('meacodes_quickscan_enabled');
delete_site_option('meacodes_quickscan_enabled');
delete_option('meacodes_quickscan_interval');
delete_site_option('meacodes_quickscan_interval');
delete_option('meacodes_quickscan_use_real_cron');
delete_site_option('meacodes_quickscan_use_real_cron');

// Delete Transients
delete_transient('meacodes_quickscan_summary');
delete_site_transient('meacodes_quickscan_summary');
delete_transient('meacodes_quickscan_running');
delete_site_transient('meacodes_quickscan_running');

