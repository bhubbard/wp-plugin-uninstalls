-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('discko_display_mode', 'discko_form_url', 'discko_hover_animation', 'discko_button_size', 'discko_show_bubble', 'discko_bubble_color', 'discko_hover_text', 'discko_custom_icon', 'discko_icon_crop_data', 'discko_button_corner', 'discko_button_position_bottom', 'discko_button_position_right', 'discko_button_position_top', 'discko_button_position_left', 'discko_modal_primary_color', 'discko_modal_font_family', 'discko_modal_desktop_width_value', 'discko_modal_desktop_width_unit', 'discko_modal_desktop_height_value', 'discko_modal_desktop_height_unit', 'discko_modal_mobile_width_value', 'discko_modal_mobile_width_unit', 'discko_modal_mobile_height_value', 'discko_modal_mobile_height_unit', 'discko_excluded_pages', 'discko_excluded_types');

