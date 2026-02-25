-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hf_settings', 'hf_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hf_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hf_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hf_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hf_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'hf_message_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'hf_message_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'hf_message_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hf_message_%';

