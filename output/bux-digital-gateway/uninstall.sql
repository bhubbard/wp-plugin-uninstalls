-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('BUX payment complete', 'BUX.digital payment complete', 'Transaction ID', 'Payer first name', 'Payer last name', 'Payer email');
DELETE FROM wp_usermeta WHERE meta_key IN ('BUX payment complete', 'BUX.digital payment complete', 'Transaction ID', 'Payer first name', 'Payer last name', 'Payer email');
DELETE FROM wp_termmeta WHERE meta_key IN ('BUX payment complete', 'BUX.digital payment complete', 'Transaction ID', 'Payer first name', 'Payer last name', 'Payer email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('BUX payment complete', 'BUX.digital payment complete', 'Transaction ID', 'Payer first name', 'Payer last name', 'Payer email');

