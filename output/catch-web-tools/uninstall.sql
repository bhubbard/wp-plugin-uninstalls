-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('catchwebtools_custom_css', 'catchwebtools_catchids', 'catchwebtools_webmaster', 'catchwebtools_opengraph', 'catchwebtools_seo', 'catchwebtools_social', 'catchwebtools_catch_updater', 'catchwebtools_to_top_options', 'catchwebtools_big_image_size_threshold', 'ctp_options', 'catchwebtools_custom_css', 'catch_updater_in_maintenance_mode', 'catch_updater_update_message', 'catchwebtools_social_display', 'catchwebtools_social_transient');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('catchwebtools_opengraph_title', 'catchwebtools_opengraph_url', 'catchwebtools_opengraph_image', 'catchwebtools_opengraph_description', 'catchwebtools_opengraph_type', 'catchwebtools_opengraph_custom', 'catchwebtools_seo_title', 'catchwebtools_seo_description', 'catchwebtools_seo_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('catchwebtools_opengraph_title', 'catchwebtools_opengraph_url', 'catchwebtools_opengraph_image', 'catchwebtools_opengraph_description', 'catchwebtools_opengraph_type', 'catchwebtools_opengraph_custom', 'catchwebtools_seo_title', 'catchwebtools_seo_description', 'catchwebtools_seo_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('catchwebtools_opengraph_title', 'catchwebtools_opengraph_url', 'catchwebtools_opengraph_image', 'catchwebtools_opengraph_description', 'catchwebtools_opengraph_type', 'catchwebtools_opengraph_custom', 'catchwebtools_seo_title', 'catchwebtools_seo_description', 'catchwebtools_seo_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('catchwebtools_opengraph_title', 'catchwebtools_opengraph_url', 'catchwebtools_opengraph_image', 'catchwebtools_opengraph_description', 'catchwebtools_opengraph_type', 'catchwebtools_opengraph_custom', 'catchwebtools_seo_title', 'catchwebtools_seo_description', 'catchwebtools_seo_keywords');

