-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pocoppa_visa', 'pocoppa_mc', 'pocoppa_amex', 'pocoppa_discover', 'partner_name', 'vendor_name', 'user', 'password', 'transaction_type', 'payment_gateway', 'pocoppa_transaction_type', 'pocoppa_payment_gateway');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ppa_pnref', '_ppa_expdate', '_ppa_acct', '_ppa_secure_token', '_ppa_secure_token_id', '_ppa_partner', '_ppa_vendor', '_ppa_user', '_ppa_password');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ppa_pnref', '_ppa_expdate', '_ppa_acct', '_ppa_secure_token', '_ppa_secure_token_id', '_ppa_partner', '_ppa_vendor', '_ppa_user', '_ppa_password');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ppa_pnref', '_ppa_expdate', '_ppa_acct', '_ppa_secure_token', '_ppa_secure_token_id', '_ppa_partner', '_ppa_vendor', '_ppa_user', '_ppa_password');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ppa_pnref', '_ppa_expdate', '_ppa_acct', '_ppa_secure_token', '_ppa_secure_token_id', '_ppa_partner', '_ppa_vendor', '_ppa_user', '_ppa_password');

