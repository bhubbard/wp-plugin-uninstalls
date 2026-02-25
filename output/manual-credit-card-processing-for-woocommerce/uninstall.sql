-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moco_wc_mcc_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', '_payment_method_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', '_payment_method_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', '_payment_method_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', '_payment_method_title');

