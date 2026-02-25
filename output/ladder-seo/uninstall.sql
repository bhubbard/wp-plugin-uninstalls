-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ladderseop_schema_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ladderseo_hide_from_result', 'ladderseo_content_generation_type', 'ladderseo_brief_description', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('ladderseo_hide_from_result', 'ladderseo_content_generation_type', 'ladderseo_brief_description', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('ladderseo_hide_from_result', 'ladderseo_content_generation_type', 'ladderseo_brief_description', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ladderseo_hide_from_result', 'ladderseo_content_generation_type', 'ladderseo_brief_description', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-schema';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-schema';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-schema';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-schema';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-canonical';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-canonical';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-canonical';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-canonical';

