-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ossdl_off_exclude', 'ossdl_off_cdn_url', 'ossdl_off_include_dirs', 'ossdl_off_rootrelative');

