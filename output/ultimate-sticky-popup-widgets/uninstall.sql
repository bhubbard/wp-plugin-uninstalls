-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uspaw_button_layout', 'uspaw_popup_active', 'uspaw_social_share_active', 'uspaw_popup_title', 'uspaw_popup_color', 'uspaw_popup_image', 'uspaw_popup_right_icon_border', 'uspaw_popup_header_color', 'uspaw_popup_header_border_color', 'uspaw_popup_place', 'uspaw_popup_top_margin', 'uspaw_popup_content');

