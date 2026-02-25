-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dsdi_version', 'dsdi_settings', 'default_ds_directory');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dsdi_options', 'option_1');
DELETE FROM wp_usermeta WHERE meta_key IN ('dsdi_options', 'option_1');
DELETE FROM wp_termmeta WHERE meta_key IN ('dsdi_options', 'option_1');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dsdi_options', 'option_1');

