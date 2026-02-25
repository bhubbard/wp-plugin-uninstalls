-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amanuke_pp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_url_lightbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('_url_lightbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('_url_lightbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_url_lightbox');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%use_prettyphoto';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%use_prettyphoto';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%use_prettyphoto';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%use_prettyphoto';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%url_lightbox_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%url_lightbox_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%url_lightbox_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url_lightbox_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%url_lightbox';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%url_lightbox';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%url_lightbox';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url_lightbox';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%url_lightbox_group';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%url_lightbox_group';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%url_lightbox_group';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url_lightbox_group';

