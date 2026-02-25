-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gcmi_last_update_check', 'gcmi_codici_catastali_remote_file_time', 'gcmi-formsign-css', 'gcmi_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gcmi_wpcf7_enc_privKey', '_gcmi_wpcf7_enc_pubKey');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gcmi_wpcf7_enc_privKey', '_gcmi_wpcf7_enc_pubKey');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gcmi_wpcf7_enc_privKey', '_gcmi_wpcf7_enc_pubKey');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gcmi_wpcf7_enc_privKey', '_gcmi_wpcf7_enc_pubKey');

