-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kuaza_wlops_css', 'wlops_konu_temasi', 'wlops_default_resimler_nasil_gorunsun', 'kuaza_wlops_loop_direk', 'kuaza_wlops_hide_cat', 'kuaza_wlops_hide_tag', 'kuaza_wlops_hide_upload', 'kuaza_wlops_guvenlik_public', 'kuaza_wlops_guvenlik_private', 'kuaza_wlops_guvenlik_tema', 'wlops_default_resimler_gosterilsinmi');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wlops', '_wlops_konu_temasi', '_wlops_resimler_nasil_gorunecek', '_wlops_loop_direk', '_wlops_link', '_wlops_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wlops', '_wlops_konu_temasi', '_wlops_resimler_nasil_gorunecek', '_wlops_loop_direk', '_wlops_link', '_wlops_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wlops', '_wlops_konu_temasi', '_wlops_resimler_nasil_gorunecek', '_wlops_loop_direk', '_wlops_link', '_wlops_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wlops', '_wlops_konu_temasi', '_wlops_resimler_nasil_gorunecek', '_wlops_loop_direk', '_wlops_link', '_wlops_views');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

