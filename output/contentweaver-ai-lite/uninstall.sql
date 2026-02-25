-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contentweaver_ai_lite_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cw_lite_source', '_cw_lite_sources', '_cw_lite_wrap', '_cw_lite_holder', '_cw_lite_meta_description', '_cw_image_source_url', '_cw_image_creator', '_cw_image_title', '_cw_image_source', '_cw_image_license');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cw_lite_source', '_cw_lite_sources', '_cw_lite_wrap', '_cw_lite_holder', '_cw_lite_meta_description', '_cw_image_source_url', '_cw_image_creator', '_cw_image_title', '_cw_image_source', '_cw_image_license');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cw_lite_source', '_cw_lite_sources', '_cw_lite_wrap', '_cw_lite_holder', '_cw_lite_meta_description', '_cw_image_source_url', '_cw_image_creator', '_cw_image_title', '_cw_image_source', '_cw_image_license');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cw_lite_source', '_cw_lite_sources', '_cw_lite_wrap', '_cw_lite_holder', '_cw_lite_meta_description', '_cw_image_source_url', '_cw_image_creator', '_cw_image_title', '_cw_image_source', '_cw_image_license');

