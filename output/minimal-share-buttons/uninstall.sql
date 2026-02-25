-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msb_socials', 'msb_content_filter', 'msb_content_title');

