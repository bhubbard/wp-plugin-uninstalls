-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mainwp_security', 'da_disable_third_party_js', 'default_post_edit_rows', 'drag-drop-post-types', 'drag-drop-file-types', 'drag-drop-user-capability', 'drag-drop-page-reload', 'da_bc_product_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_da_hotspots_json', '_da_hotspots', '_wp_attachment_image_alt', '_wp_page_template', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_da_hotspots_json', '_da_hotspots', '_wp_attachment_image_alt', '_wp_page_template', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_da_hotspots_json', '_da_hotspots', '_wp_attachment_image_alt', '_wp_page_template', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_da_hotspots_json', '_da_hotspots', '_wp_attachment_image_alt', '_wp_page_template', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%hotspots';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%hotspots';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%hotspots';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hotspots';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%coordinates';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%coordinates';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%coordinates';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%coordinates';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_da_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_da_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_da_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_da_%';

