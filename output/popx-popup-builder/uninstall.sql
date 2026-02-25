-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_popx_popup_position', '_popx_active_popup', '_popx_popup_bg_overly', '_popx_popup_delay_time', '_popx_popup_popup_width', '_popx_popup_popup_height', '_popx_popup_wrap_padding', '_popx_popup_wrap_border', '_popx_popup_wrap_bg_color', '_popx_popup_wrap_bg_img', '_popx_popup_wrap_box_shadow', '_popx_popup_wrap_border_radius', '_popx_display_page_type', '_popx_display_pages', '_popx_exit_popups', '_popx_popup_overly_color', '_popx_popup_position_z_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('_popx_popup_position', '_popx_active_popup', '_popx_popup_bg_overly', '_popx_popup_delay_time', '_popx_popup_popup_width', '_popx_popup_popup_height', '_popx_popup_wrap_padding', '_popx_popup_wrap_border', '_popx_popup_wrap_bg_color', '_popx_popup_wrap_bg_img', '_popx_popup_wrap_box_shadow', '_popx_popup_wrap_border_radius', '_popx_display_page_type', '_popx_display_pages', '_popx_exit_popups', '_popx_popup_overly_color', '_popx_popup_position_z_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('_popx_popup_position', '_popx_active_popup', '_popx_popup_bg_overly', '_popx_popup_delay_time', '_popx_popup_popup_width', '_popx_popup_popup_height', '_popx_popup_wrap_padding', '_popx_popup_wrap_border', '_popx_popup_wrap_bg_color', '_popx_popup_wrap_bg_img', '_popx_popup_wrap_box_shadow', '_popx_popup_wrap_border_radius', '_popx_display_page_type', '_popx_display_pages', '_popx_exit_popups', '_popx_popup_overly_color', '_popx_popup_position_z_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_popx_popup_position', '_popx_active_popup', '_popx_popup_bg_overly', '_popx_popup_delay_time', '_popx_popup_popup_width', '_popx_popup_popup_height', '_popx_popup_wrap_padding', '_popx_popup_wrap_border', '_popx_popup_wrap_bg_color', '_popx_popup_wrap_bg_img', '_popx_popup_wrap_box_shadow', '_popx_popup_wrap_border_radius', '_popx_display_page_type', '_popx_display_pages', '_popx_exit_popups', '_popx_popup_overly_color', '_popx_popup_position_z_index');

