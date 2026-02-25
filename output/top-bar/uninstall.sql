-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpbr_guests_or_users', 'tpbr_fixed', 'tpbr_message', 'tpbr_status', 'tpbr_yn_button', 'tpbr_color', 'tpbr_btn_text', 'tpbr_btn_url', 'tpbr_btn_behavior', 'tpbr_detect_sticky');
DELETE FROM wp_options WHERE option_name LIKE 'tpbr_role_%';

