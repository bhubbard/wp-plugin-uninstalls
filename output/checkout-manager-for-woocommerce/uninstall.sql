-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_phoeniixx_custom_additional_fields', '_phoeniixx_custom_billing_fields', '_phoeniixx_custom_shipping_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phoeniixx_checkout_manager_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('phoeniixx_checkout_manager_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('phoeniixx_checkout_manager_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phoeniixx_checkout_manager_ignore_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

