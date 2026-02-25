-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_sonypayment_settings', 'woocommerce_sonypayment_cvs_settings', 'wc4jp-yomigana', 'woocommerce_checkout_page_id', 'spfwc_cvs_settlement_fees');

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

