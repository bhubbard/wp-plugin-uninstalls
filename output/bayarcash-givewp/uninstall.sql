-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'bayarcash_givewp_directdebit_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_give_payment_status', '_give_anonymous_donation');
DELETE FROM wp_usermeta WHERE meta_key IN ('_give_payment_status', '_give_anonymous_donation');
DELETE FROM wp_termmeta WHERE meta_key IN ('_give_payment_status', '_give_anonymous_donation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_give_payment_status', '_give_anonymous_donation');

