-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('son_cp_enable_copy_protection', 'son_cp_enable_right_click_protection', 'son_cp_copy_message', 'son_cp_right_click_message', 'son_cp_admin_message');

