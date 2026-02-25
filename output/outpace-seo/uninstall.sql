-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('outpaceseo_settings', 'outpaceseo_search_settings', 'outpaceseo_sitemap_settings', 'outpaceseo_bulk_counter', 'op_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_outpaceseo_script_status', '_outpaceseo_script_position', '_outpaceseo_script_code', '_outpaceseo_script_pagetrack', '_outpaceseo_script_pagetrack_type', '_outpaceseo_script_page', '_outpaceseo_script_post', '_outpaceseo_title', '_outpaceseo_meta_desc', '_outpaceseo_page_slug', '_outpaceseo_indexing', '_outpaceseo_follow', '_outpaceseo_canonical_url', '_wp_attachment_image_alt', 'outpaceseo-schema-type', 'outpaceseo-schema-location', 'outpaceseo-schema-exclusion', 'outpaceseo-review', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_outpaceseo_script_status', '_outpaceseo_script_position', '_outpaceseo_script_code', '_outpaceseo_script_pagetrack', '_outpaceseo_script_pagetrack_type', '_outpaceseo_script_page', '_outpaceseo_script_post', '_outpaceseo_title', '_outpaceseo_meta_desc', '_outpaceseo_page_slug', '_outpaceseo_indexing', '_outpaceseo_follow', '_outpaceseo_canonical_url', '_wp_attachment_image_alt', 'outpaceseo-schema-type', 'outpaceseo-schema-location', 'outpaceseo-schema-exclusion', 'outpaceseo-review', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_outpaceseo_script_status', '_outpaceseo_script_position', '_outpaceseo_script_code', '_outpaceseo_script_pagetrack', '_outpaceseo_script_pagetrack_type', '_outpaceseo_script_page', '_outpaceseo_script_post', '_outpaceseo_title', '_outpaceseo_meta_desc', '_outpaceseo_page_slug', '_outpaceseo_indexing', '_outpaceseo_follow', '_outpaceseo_canonical_url', '_wp_attachment_image_alt', 'outpaceseo-schema-type', 'outpaceseo-schema-location', 'outpaceseo-schema-exclusion', 'outpaceseo-review', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_outpaceseo_script_status', '_outpaceseo_script_position', '_outpaceseo_script_code', '_outpaceseo_script_pagetrack', '_outpaceseo_script_pagetrack_type', '_outpaceseo_script_page', '_outpaceseo_script_post', '_outpaceseo_title', '_outpaceseo_meta_desc', '_outpaceseo_page_slug', '_outpaceseo_indexing', '_outpaceseo_follow', '_outpaceseo_canonical_url', '_wp_attachment_image_alt', 'outpaceseo-schema-type', 'outpaceseo-schema-location', 'outpaceseo-schema-exclusion', 'outpaceseo-review', 'rating');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'outpaceseo-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'outpaceseo-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'outpaceseo-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'outpaceseo-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-users';

