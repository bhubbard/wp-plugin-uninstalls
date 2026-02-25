-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('success_page', 'failure_page', 'test_mode', 'merchant_id', 'public_key', 'private_key', 'tokenization_key', 'acwp_currency', 'acwp_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_form_settings_meta_box_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_form_settings_meta_box_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_form_settings_meta_box_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_form_settings_meta_box_key');

