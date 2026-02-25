-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_header_content_bytemantra', 'custom_footer_content_bytemantra', 'custom_header_content_status_bytemantra', 'custom_footer_content_status_bytemantra', 'custom_header_content_priority_bytemantra', 'custom_footer_content_priority_bytemantra');

