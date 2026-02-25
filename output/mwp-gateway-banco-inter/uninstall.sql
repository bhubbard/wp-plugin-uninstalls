-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwp_inter_wc_chave_pix', 'mwp_inter_wc_patch_key_path', 'mwp_inter_wc_patch_ctr_path', 'mwp_inter_wc_token', 'mwp_inter_wc_secret_token', 'mwp_inter_wc_conta_corrente', 'mwp_inter_wc_beneficiario', 'mwp_inter_wc_cidade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qrcode', 'arquivo', 'copypast', 'nossoNumero', 'txid');
DELETE FROM wp_usermeta WHERE meta_key IN ('qrcode', 'arquivo', 'copypast', 'nossoNumero', 'txid');
DELETE FROM wp_termmeta WHERE meta_key IN ('qrcode', 'arquivo', 'copypast', 'nossoNumero', 'txid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qrcode', 'arquivo', 'copypast', 'nossoNumero', 'txid');

