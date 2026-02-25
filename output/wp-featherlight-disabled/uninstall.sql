-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('featherlight_plugin_db_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zeroneit_featherlight_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('zeroneit_featherlight_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('zeroneit_featherlight_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zeroneit_featherlight_disable');

