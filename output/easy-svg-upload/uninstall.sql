-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esup_enable_easy_svg_upload', 'esup_allow_authors', 'esup_max_svg_kb');

