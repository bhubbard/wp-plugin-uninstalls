-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobx_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcom_metas', 'wpcom_seo_title', 'views');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcom_metas', 'wpcom_seo_title', 'views');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcom_metas', 'wpcom_seo_title', 'views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcom_metas', 'wpcom_seo_title', 'views');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcom_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcom_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcom_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcom_%';

