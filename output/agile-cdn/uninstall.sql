-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agile_cdn_url', 'agile_cdn_prefix', 'agile_cdn_enabled');

