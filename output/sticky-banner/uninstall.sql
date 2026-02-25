-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hdsb_stickybanner_version', 'hdsb_stickybanner_enabled', 'hdsb_stickybanner_text', 'hdsb_stickybanner_colour', 'hdsb_stickybanner_text_colour', 'hdsb_stickybanner_position', 'hdsb_stickybanner_btn_text', 'hdsb_stickybanner_btn_link', 'hdsb_stickybanner_cookie_expiry', 'hdsb_stickybanner_hide_on_pages', 'hdsb_stickybanner_hide_close_btn');

