-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwl_login_message_id', 'jwl_logout_message_id', 'jwl_login_css_id', 'jwl_logout_css_id', 'jwl_logo_id', 'jwl_headerurl_id', 'jwl_headertitle_id', 'jwl_enable1_id', 'jwl_enable3_id', 'jwl_enable6_id', 'jwl_enable7_id', 'jwl_enable8_id');

