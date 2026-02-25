-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onvo_last_order_number', 'onvo_last_order_number_subs');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_onvo_payment_method_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_onvo_payment_method_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_onvo_payment_method_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_onvo_payment_method_id');

