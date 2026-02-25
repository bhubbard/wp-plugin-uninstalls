-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aspl_qview_button_text', 'aspl_qview_button_back_color', 'aspl_qview_button_text_color');

