-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sdp_locations', 'sdp_settings', 'gdpr-tools-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sdp_generated_pages', 'sdp_location', '_aviaLayoutBuilderCleanData', '_aviaLayoutBuilder_active', '_avia_sc_parser_state', '_av_el_mgr_version', '_avia_builder_shortcode_tree', '_edit_last', 'hefo_before', 'hefo_after', '_av_alb_posts_elements_state', 'layout', 'sidebar', 'footer', 'header_title_bar', 'header_transparency', '_yoast_wpseo_content_score', '_edit_lock', '_wds_title', '_wds_metadesc', 'sdp-data-object');
DELETE FROM wp_usermeta WHERE meta_key IN ('sdp_generated_pages', 'sdp_location', '_aviaLayoutBuilderCleanData', '_aviaLayoutBuilder_active', '_avia_sc_parser_state', '_av_el_mgr_version', '_avia_builder_shortcode_tree', '_edit_last', 'hefo_before', 'hefo_after', '_av_alb_posts_elements_state', 'layout', 'sidebar', 'footer', 'header_title_bar', 'header_transparency', '_yoast_wpseo_content_score', '_edit_lock', '_wds_title', '_wds_metadesc', 'sdp-data-object');
DELETE FROM wp_termmeta WHERE meta_key IN ('sdp_generated_pages', 'sdp_location', '_aviaLayoutBuilderCleanData', '_aviaLayoutBuilder_active', '_avia_sc_parser_state', '_av_el_mgr_version', '_avia_builder_shortcode_tree', '_edit_last', 'hefo_before', 'hefo_after', '_av_alb_posts_elements_state', 'layout', 'sidebar', 'footer', 'header_title_bar', 'header_transparency', '_yoast_wpseo_content_score', '_edit_lock', '_wds_title', '_wds_metadesc', 'sdp-data-object');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sdp_generated_pages', 'sdp_location', '_aviaLayoutBuilderCleanData', '_aviaLayoutBuilder_active', '_avia_sc_parser_state', '_av_el_mgr_version', '_avia_builder_shortcode_tree', '_edit_last', 'hefo_before', 'hefo_after', '_av_alb_posts_elements_state', 'layout', 'sidebar', 'footer', 'header_title_bar', 'header_transparency', '_yoast_wpseo_content_score', '_edit_lock', '_wds_title', '_wds_metadesc', 'sdp-data-object');

