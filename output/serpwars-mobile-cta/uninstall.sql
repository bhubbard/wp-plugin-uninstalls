-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('me_settings', 'eg_setting_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ca_ma_selected_components');
DELETE FROM wp_usermeta WHERE meta_key IN ('ca_ma_selected_components');
DELETE FROM wp_termmeta WHERE meta_key IN ('ca_ma_selected_components');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ca_ma_selected_components');

