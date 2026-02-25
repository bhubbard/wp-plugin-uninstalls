-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptc_delete_data_on_uninstall', 'PTC_plugin_version', 'ptc_activated_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('protect_children', '_protect_children');
DELETE FROM wp_usermeta WHERE meta_key IN ('protect_children', '_protect_children');
DELETE FROM wp_termmeta WHERE meta_key IN ('protect_children', '_protect_children');
DELETE FROM wp_commentmeta WHERE meta_key IN ('protect_children', '_protect_children');

