-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smcoex_myw_expiry_date', '_smcoex_myw_expiry_action', '_smcoex_myw_expiry_message', '_smcoex_myw_expiry_redirect');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smcoex_myw_expiry_date', '_smcoex_myw_expiry_action', '_smcoex_myw_expiry_message', '_smcoex_myw_expiry_redirect');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smcoex_myw_expiry_date', '_smcoex_myw_expiry_action', '_smcoex_myw_expiry_message', '_smcoex_myw_expiry_redirect');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smcoex_myw_expiry_date', '_smcoex_myw_expiry_action', '_smcoex_myw_expiry_message', '_smcoex_myw_expiry_redirect');

