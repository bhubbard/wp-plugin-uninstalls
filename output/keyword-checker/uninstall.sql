-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_keyword1', '_keyword2', '_keyword3', '_yoast_wpseo_metadesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_keyword1', '_keyword2', '_keyword3', '_yoast_wpseo_metadesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_keyword1', '_keyword2', '_keyword3', '_yoast_wpseo_metadesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_keyword1', '_keyword2', '_keyword3', '_yoast_wpseo_metadesc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

