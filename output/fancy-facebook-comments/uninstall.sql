-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('heateor_ffc', 'heateor_ffc_version', 'heateor_ffc_gdpr_notification_read');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_heateor_ffc_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_heateor_ffc_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_heateor_ffc_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_heateor_ffc_meta');

