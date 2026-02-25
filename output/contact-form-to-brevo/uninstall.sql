-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cfb_psd_fields', 'cfb_psd_enable', 'cfb_psd_update_existing', 'cfb_psd_credentials');
DELETE FROM wp_usermeta WHERE meta_key IN ('cfb_psd_fields', 'cfb_psd_enable', 'cfb_psd_update_existing', 'cfb_psd_credentials');
DELETE FROM wp_termmeta WHERE meta_key IN ('cfb_psd_fields', 'cfb_psd_enable', 'cfb_psd_update_existing', 'cfb_psd_credentials');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cfb_psd_fields', 'cfb_psd_enable', 'cfb_psd_update_existing', 'cfb_psd_credentials');

