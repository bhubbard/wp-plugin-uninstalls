-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cp_editor_table', 'polylang', 'cp_editor_plugin_version', 'cpe_pro_activation_blocked');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cp_editor');
DELETE FROM wp_usermeta WHERE meta_key IN ('cp_editor');
DELETE FROM wp_termmeta WHERE meta_key IN ('cp_editor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cp_editor');

