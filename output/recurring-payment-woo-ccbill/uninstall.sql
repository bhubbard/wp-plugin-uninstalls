-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Payer CCBILL email address', 'Payer first name', 'Payer last name', 'Payment type', 'Subscription ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('Payer CCBILL email address', 'Payer first name', 'Payer last name', 'Payment type', 'Subscription ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('Payer CCBILL email address', 'Payer first name', 'Payer last name', 'Payment type', 'Subscription ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Payer CCBILL email address', 'Payer first name', 'Payer last name', 'Payment type', 'Subscription ID');

