-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'CWWYA_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_user', 'id_CWWYA', 'img', 'variations_CWWYA', 'variations_aveonline');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_user', 'id_CWWYA', 'img', 'variations_CWWYA', 'variations_aveonline');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_user', 'id_CWWYA', 'img', 'variations_CWWYA', 'variations_aveonline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_user', 'id_CWWYA', 'img', 'variations_CWWYA', 'variations_aveonline');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'gallery_image%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'gallery_image%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'gallery_image%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gallery_image%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

