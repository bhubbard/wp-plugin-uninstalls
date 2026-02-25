-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('QuantiModo_settings', 'fx-admin-notice-example');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qm_access_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('qm_access_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('qm_access_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qm_access_token');

