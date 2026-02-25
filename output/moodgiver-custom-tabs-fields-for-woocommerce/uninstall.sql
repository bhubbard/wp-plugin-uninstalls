-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mood_ctcf_settings', 'mg_wc_cfmb');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mg_wc_tab_order', 'mg_wc_tab_active', 'mg_wc_tab_footer');
DELETE FROM wp_usermeta WHERE meta_key IN ('mg_wc_tab_order', 'mg_wc_tab_active', 'mg_wc_tab_footer');
DELETE FROM wp_termmeta WHERE meta_key IN ('mg_wc_tab_order', 'mg_wc_tab_active', 'mg_wc_tab_footer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mg_wc_tab_order', 'mg_wc_tab_active', 'mg_wc_tab_footer');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mg_wc_tab_custom_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mg_wc_tab_custom_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mg_wc_tab_custom_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mg_wc_tab_custom_field_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mg_cf_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mg_cf_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mg_cf_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mg_cf_%';

