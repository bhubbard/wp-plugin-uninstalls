-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('percup_bg_color', 'percup_logo', 'percup_heading', 'percup_heading_color', 'percup_font_size', 'percup_font_family', 'percup_text_content', 'percup_content_font_size', 'percup_content_font_family', 'percup_subtext_color', 'percup_button_text', 'percup_button_bg_color', 'percup_button_text_color', 'percup_cookie_days');

