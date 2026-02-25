-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imjolwp_webp_quality', 'imjolwp_remove_metadata');

