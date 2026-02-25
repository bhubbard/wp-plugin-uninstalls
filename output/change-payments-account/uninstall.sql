-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_private_options', 'jetpack_options', 'cpy_payments_error_tokens', '_cpy_current_token', 'carbon_custom_sidebars', 'wcpay_account_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woocommerce_payments_token_name', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('woocommerce_payments_token_name', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('woocommerce_payments_token_name', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woocommerce_payments_token_name', '_wp_page_template');

