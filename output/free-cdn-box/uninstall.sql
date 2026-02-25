-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fcbox_enable_cdn', 'fcbox_minify', 'fcbox_cdn_url', 'fcbox_cdn_option');

