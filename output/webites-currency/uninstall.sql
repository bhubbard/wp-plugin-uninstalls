-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbcp_display_currencies_array', 'wbcp_display_after_content', 'wbcp_display_header_before', 'wbcp_display_text_after');

