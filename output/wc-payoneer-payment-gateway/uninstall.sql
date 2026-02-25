-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payoneer_email', '_payoneer_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payoneer_email', '_payoneer_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payoneer_email', '_payoneer_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payoneer_email', '_payoneer_transaction_id');

