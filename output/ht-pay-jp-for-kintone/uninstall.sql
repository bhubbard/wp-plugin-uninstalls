-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ht_pay_jp_for_kintone_test_secret_key', 'ht_pay_jp_for_kintone_test_public_key', 'ht_pay_jp_for_kintone_live_secret_key', 'ht_pay_jp_for_kintone_live_public_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ht_payjpforkintone_setting_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ht_payjpforkintone_setting_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ht_payjpforkintone_setting_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ht_payjpforkintone_setting_data');

