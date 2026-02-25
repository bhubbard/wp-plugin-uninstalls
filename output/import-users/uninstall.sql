-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_uci_pro_settings', 'smack_image_options', 'total_attachment_ids', 'failed_attachment_ids', 'wpmembers_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smack_uci_import', 'sendPassword');
DELETE FROM wp_usermeta WHERE meta_key IN ('smack_uci_import', 'sendPassword');
DELETE FROM wp_termmeta WHERE meta_key IN ('smack_uci_import', 'sendPassword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smack_uci_import', 'sendPassword');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities';

