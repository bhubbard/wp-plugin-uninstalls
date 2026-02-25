-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_size';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_size';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_size';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_size';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%lazyLoad';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%lazyLoad';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%lazyLoad';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lazyLoad';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%link_to_size';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%link_to_size';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%link_to_size';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%link_to_size';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%rel';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%rel';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%rel';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%rel';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%images';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%images';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%images';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%images';

