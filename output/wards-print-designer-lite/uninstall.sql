-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_pao_activation_notice', 'wc_pao_pre_wc_30_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_product_customizable');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_product_customizable');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_product_customizable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_product_customizable');

