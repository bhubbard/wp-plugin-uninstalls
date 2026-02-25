-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('block_engine_plugin_version', 'block_engine_plugin_db_version', 'block_engine_install_date', 'block_engine_css_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('block_engine_ctt_via');
DELETE FROM wp_usermeta WHERE meta_key IN ('block_engine_ctt_via');
DELETE FROM wp_termmeta WHERE meta_key IN ('block_engine_ctt_via');
DELETE FROM wp_commentmeta WHERE meta_key IN ('block_engine_ctt_via');

