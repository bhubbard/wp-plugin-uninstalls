-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bscp_btn_bg', 'bscp_btn_bg_hover', 'bscp_btn_text', 'bscp_btn_text_hover');

