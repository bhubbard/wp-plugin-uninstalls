-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplicy_css_code', 'simplicy_read_code', 'simplicy_title_code');

