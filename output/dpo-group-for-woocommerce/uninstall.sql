-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_woocommerce_dpo_settings', 'woocommerce_dpo_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_markup_fee_added', 'dpo_reference', 'dpo_trans_token', 'customer_credit_type', 'service_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_markup_fee_added', 'dpo_reference', 'dpo_trans_token', 'customer_credit_type', 'service_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_markup_fee_added', 'dpo_reference', 'dpo_trans_token', 'customer_credit_type', 'service_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_markup_fee_added', 'dpo_reference', 'dpo_trans_token', 'customer_credit_type', 'service_type');

