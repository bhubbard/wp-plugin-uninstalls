-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apg_nif_actualizado', 'apg_nif_settings', 'apg_nif_plugin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_nif', 'billing_phone', 'billing_email', 'shipping_nif', 'shipping_phone', 'shipping_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_nif', 'billing_phone', 'billing_email', 'shipping_nif', 'shipping_phone', 'shipping_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_nif', 'billing_phone', 'billing_email', 'shipping_nif', 'shipping_phone', 'shipping_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_nif', 'billing_phone', 'billing_email', 'shipping_nif', 'shipping_phone', 'shipping_email');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_nif';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_nif';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_nif';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_nif';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_phone';

