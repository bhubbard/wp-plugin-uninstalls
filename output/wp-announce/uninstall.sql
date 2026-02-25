-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpa_options', 'wpa_post_id', 'wpa_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpa_header_style', 'wpa_body_style', '_thumbnail_id', '_wp_attached_file', 'wpa_test_cookie', 'wpa_access', 'wpa_frequency', 'wpa_status', 'wpa_width', 'wpa_height', 'wpa_delay', 'wpa_bgcolor');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpa_header_style', 'wpa_body_style', '_thumbnail_id', '_wp_attached_file', 'wpa_test_cookie', 'wpa_access', 'wpa_frequency', 'wpa_status', 'wpa_width', 'wpa_height', 'wpa_delay', 'wpa_bgcolor');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpa_header_style', 'wpa_body_style', '_thumbnail_id', '_wp_attached_file', 'wpa_test_cookie', 'wpa_access', 'wpa_frequency', 'wpa_status', 'wpa_width', 'wpa_height', 'wpa_delay', 'wpa_bgcolor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpa_header_style', 'wpa_body_style', '_thumbnail_id', '_wp_attached_file', 'wpa_test_cookie', 'wpa_access', 'wpa_frequency', 'wpa_status', 'wpa_width', 'wpa_height', 'wpa_delay', 'wpa_bgcolor');

