-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('konfirmi_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%';

