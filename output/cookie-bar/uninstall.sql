-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookie_bar_show_for_logged_out_users_only', 'cookie_bar_show_on_top', 'cookie_bar_expiration_type', 'cookie_bar_days_to_expire', 'cookie_bar_message', 'cookie_bar_button', 'cookie_bar_btn_bg_colour', 'cookie_bar_btn_font_colour', 'cookie_bar_bar_bg_colour', 'cookie_bar_bar_font_colour');

