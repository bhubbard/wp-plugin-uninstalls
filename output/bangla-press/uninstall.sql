-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bkash_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bkash_last_digit', '_payment_method', '_billing_first_name', '_billing_email', '_billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bkash_last_digit', '_payment_method', '_billing_first_name', '_billing_email', '_billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bkash_last_digit', '_payment_method', '_billing_first_name', '_billing_email', '_billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bkash_last_digit', '_payment_method', '_billing_first_name', '_billing_email', '_billing_phone');

