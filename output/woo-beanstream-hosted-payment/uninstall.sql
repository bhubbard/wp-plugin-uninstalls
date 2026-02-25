-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Payer beanstream address', 'Payer first name', 'Payment type');
DELETE FROM wp_usermeta WHERE meta_key IN ('Payer beanstream address', 'Payer first name', 'Payment type');
DELETE FROM wp_termmeta WHERE meta_key IN ('Payer beanstream address', 'Payer first name', 'Payment type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Payer beanstream address', 'Payer first name', 'Payment type');

