-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tera_tips_enable_button', 'tera_tips_max_amount', 'tera_tips_icon', 'tera_tips_commission', 'tera_tips_show_summary', 'tera_tips_button_bg', 'tera_tips_button_text_color', 'tera_tips_button_text', 'tera_tips_warning_text');

