-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unify_sgc_sms_option_name', 'unifysgcsms_woo_inactive_notice', 'unify_sgc_sms_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'first_name', 'billing_first_name', 'last_name', 'billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'first_name', 'billing_first_name', 'last_name', 'billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'first_name', 'billing_first_name', 'last_name', 'billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'first_name', 'billing_first_name', 'last_name', 'billing_last_name');

