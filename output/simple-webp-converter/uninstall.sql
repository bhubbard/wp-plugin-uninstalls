-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpwebpconv_options', 'simpwebpconv_stats', 'swc_options');

