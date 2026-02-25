-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daextrebl_options_version', 'daextrebl_database_version', 'daim_dismissible_notice_a', 'daextrebl_font_family', 'daextrebl_container_background_color', 'daextrebl_title_font_color', 'daextrebl_description_font_color', 'daextrebl_validation_message_background_color', 'daextrebl_validation_message_font_color', 'daextrebl_controls_label_color', 'daextrebl_borders_color', 'daextrebl_buttons_background_color', 'daextrebl_buttons_font_color', 'daextrebl_controls_background_color', 'daextrebl_controls_font_color', 'daextrebl_controls_highlight_color', 'daextrebl_controls_scrollbar_color', 'daextrebl_controls_scrollbar_selection_color', 'daextrebl_icons_color', 'daextrebl_margin_top', 'daextrebl_margin_bottom', 'daextrebl_responsive_breakpoint');
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_url';
DELETE FROM wp_options WHERE option_name LIKE '%_cookie_expiration';

