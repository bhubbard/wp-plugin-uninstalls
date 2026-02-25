-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agl_cookie_days', 'agl_primary_color', 'agl_title_color', 'agl_main_title', 'agl_description', 'agl_custom_success_message', 'agl_yes_btn_text', 'agl_no_btn_text', 'agl_test_mode', 'agl_logo_img', 'agl_age_limit', 'agl_safe_link');

