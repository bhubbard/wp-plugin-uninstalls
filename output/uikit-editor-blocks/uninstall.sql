-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uikit-editor-blocks_uikit_theme', 'uikit-editor-blocks_exclude_load_uikit_components');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

