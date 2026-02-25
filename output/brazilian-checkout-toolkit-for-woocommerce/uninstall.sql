-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bctfw_version', 'bctfw_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood', 'billing_birthdate', '_billing_birthdate');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood', 'billing_birthdate', '_billing_birthdate');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood', 'billing_birthdate', '_billing_birthdate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood', 'shipping_number', 'shipping_neighborhood', 'billing_birthdate', '_billing_birthdate');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

