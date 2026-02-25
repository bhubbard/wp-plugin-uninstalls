-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bcAGGT_gate_active', 'bcAGGT_page_cookie', 'bcAGGT_page_privacy', 'bcAGGT_page_disclaimer', 'bcAGGT_gate_cookietime', 'bcAGGT_gate_age', 'bcAGGT_gate_cookienotice', 'bcAGGT_gate_gtype', 'bcAGGT_gate_theme', 'bcAGGT_gate_css', 'bcAGGT_gate_logo', 'bcAGGT_gate_message', 'bcAGGT_gate_message_footer', 'bcAGGT_gate_background_image');

