-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lzcs_color', 'lzcs_cat', 'lzcs_count', 'lzcs');

