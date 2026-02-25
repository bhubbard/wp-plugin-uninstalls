-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_awooc_active', 'woocommerce_awooc_text_rated', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'woocommerce_price_thousand_sep', 'woocommerce_awooc_mode_catalog', 'woocommerce_awooc_output_catalog', 'woocommerce_awooc_title_button', 'woocommerce_awooc_title_custom', 'woocommerce_awooc_select_form', 'woocommerce_placeholder_image', 'woocommerce_awooc_change_subject', 'woocommerce_awooc_enable_letter_template', 'woocommerce_awooc_created_order', 'woocommerce_awooc_change_name', 'woocommerce_awooc_not_del_settings', 'woocommerce_awooc_select_item');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hash');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

