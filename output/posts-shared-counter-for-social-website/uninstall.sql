-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kspt_enable_ajax', 'kspt_konu_otomatik', 'kspt_konu_temasi', 'kspt_konu_temasi_css', 'kspt_enable_plugins', 'kspt_settimetime', 'kspt_konudagoster_neresi', 'kspt_disable_search', 'kspt_cache_time', 'kspt_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kpst_konuda_goster', '_wlops_link', '_wlops_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kpst_konuda_goster', '_wlops_link', '_wlops_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kpst_konuda_goster', '_wlops_link', '_wlops_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kpst_konuda_goster', '_wlops_link', '_wlops_views');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

