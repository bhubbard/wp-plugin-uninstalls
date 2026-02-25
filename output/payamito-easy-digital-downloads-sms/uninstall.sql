-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_payamito_options', 'payamito_core_version', 'kianfr_demo_mode', 'payamito', 'recently_activated', 'payamito_edd_installing', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_payment_user_id', '_edd_payment_meta', ' edd_payamito_mobile', 'edd_payamito_mobile');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_payment_user_id', '_edd_payment_meta', ' edd_payamito_mobile', 'edd_payamito_mobile');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_payment_user_id', '_edd_payment_meta', ' edd_payamito_mobile', 'edd_payamito_mobile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_payment_user_id', '_edd_payment_meta', ' edd_payamito_mobile', 'edd_payamito_mobile');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_kianfr_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_kianfr_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_kianfr_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kianfr_errors_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

