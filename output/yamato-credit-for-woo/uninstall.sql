-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_kuronekopayment_paypay_settings', 'woocommerce_kuronekopayment_settings', 'woocommerce_checkout_page_id', 'woocommerce_kuronekopayment_cvs_settings', 'wc4jp-yomigana');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kupaywc_member_id', '_kupaywc_auth_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kupaywc_member_id', '_kupaywc_auth_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kupaywc_member_id', '_kupaywc_auth_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kupaywc_member_id', '_kupaywc_auth_key');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name_kana';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name_kana';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name_kana';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name_kana';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_name_kana';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_name_kana';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_name_kana';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_name_kana';

