-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woolab_icdic_notice_settings', 'woolab_icdic_toggle_switch', 'woolab_icdic_country_switch', 'woolab_icdic_vat_exempt_switch');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woolab-icdic-notice-dismissed1243', 'billing_country', 'billing_ic', 'billing_dic', 'billing_dic_dph');
DELETE FROM wp_usermeta WHERE meta_key IN ('woolab-icdic-notice-dismissed1243', 'billing_country', 'billing_ic', 'billing_dic', 'billing_dic_dph');
DELETE FROM wp_termmeta WHERE meta_key IN ('woolab-icdic-notice-dismissed1243', 'billing_country', 'billing_ic', 'billing_dic', 'billing_dic_dph');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woolab-icdic-notice-dismissed1243', 'billing_country', 'billing_ic', 'billing_dic', 'billing_dic_dph');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ic';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ic';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ic';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ic';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dic';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dic';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dic';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dic';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dic_dph';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dic_dph';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dic_dph';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dic_dph';

