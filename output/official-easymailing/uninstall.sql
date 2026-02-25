-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_timezone_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', 'billing_email', 'billing_first_name', 'billing_last_name', 'billing_company', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', 'billing_email', 'billing_first_name', 'billing_last_name', 'billing_company', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', 'billing_email', 'billing_first_name', 'billing_last_name', 'billing_company', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', 'billing_email', 'billing_first_name', 'billing_last_name', 'billing_company', 'first_name', 'last_name');

