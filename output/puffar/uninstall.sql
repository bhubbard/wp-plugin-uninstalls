-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('puff_settings', 'widget_ps_puff', 'puff_plugin_version', 'puff_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_puff_meta', '_puff_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_puff_meta', '_puff_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_puff_meta', '_puff_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_puff_meta', '_puff_link');

