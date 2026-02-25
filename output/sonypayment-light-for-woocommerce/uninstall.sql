-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_sonypayment-light_cvs_settings', 'woocommerce_checkout_page_id', 'woocommerce_sonypayment-light_settings', 'spfwc_cvs_settlement_fees', 'wc4jp-yomigana');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_spfwc_member_id', '_spfwc_member_pass');
DELETE FROM wp_usermeta WHERE meta_key IN ('_spfwc_member_id', '_spfwc_member_pass');
DELETE FROM wp_termmeta WHERE meta_key IN ('_spfwc_member_id', '_spfwc_member_pass');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_spfwc_member_id', '_spfwc_member_pass');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name_kana';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name_kana';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name_kana';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name_kana';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_name_kana';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_name_kana';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_name_kana';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_name_kana';

