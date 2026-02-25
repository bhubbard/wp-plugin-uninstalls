-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_secure_token_id', '_secure_token', '_order_key', '_edd_payment_date', '_edd_payment_fees', '_edd_payment_meta', '_edd_payment_total', '_edd_payment_tax', '_edd_payment_user_email', '_edd_completed_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_secure_token_id', '_secure_token', '_order_key', '_edd_payment_date', '_edd_payment_fees', '_edd_payment_meta', '_edd_payment_total', '_edd_payment_tax', '_edd_payment_user_email', '_edd_completed_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_secure_token_id', '_secure_token', '_order_key', '_edd_payment_date', '_edd_payment_fees', '_edd_payment_meta', '_edd_payment_total', '_edd_payment_tax', '_edd_payment_user_email', '_edd_completed_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_secure_token_id', '_secure_token', '_order_key', '_edd_payment_date', '_edd_payment_fees', '_edd_payment_meta', '_edd_payment_total', '_edd_payment_tax', '_edd_payment_user_email', '_edd_completed_date');

