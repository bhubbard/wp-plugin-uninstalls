-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jft_timezone', 'jft_custom_field', 'jft_page_url', 'jft_more_text');

