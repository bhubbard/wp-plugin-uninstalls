-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'payment', 'transaction_id', 'payment_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'payment', 'transaction_id', 'payment_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'payment', 'transaction_id', 'payment_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'payment', 'transaction_id', 'payment_date');

