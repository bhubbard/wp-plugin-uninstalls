-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adaptive-images', 'wprxr_include_paths', 'wprxr_ai_config');

