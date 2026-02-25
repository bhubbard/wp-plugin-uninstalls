-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fl_builder_enabled', '_et_pb_use_builder', '_et_pb_ab_bounce_rate_limit', '_et_pb_ab_stats_refresh_interval', '_et_pb_enable_shortcode_tracking', '_et_pb_custom_css', '_et_pb_light_text_color', '_et_pb_dark_text_color', '_et_pb_content_area_background_color', '_et_pb_section_background_color', '_elementor_data', '_elementor_template_type', '_elementor_controls_usage', '_elementor_css', '_wp_attachment_image_alt', 'panels_data', '_in_translation_ref_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fl_builder_enabled', '_et_pb_use_builder', '_et_pb_ab_bounce_rate_limit', '_et_pb_ab_stats_refresh_interval', '_et_pb_enable_shortcode_tracking', '_et_pb_custom_css', '_et_pb_light_text_color', '_et_pb_dark_text_color', '_et_pb_content_area_background_color', '_et_pb_section_background_color', '_elementor_data', '_elementor_template_type', '_elementor_controls_usage', '_elementor_css', '_wp_attachment_image_alt', 'panels_data', '_in_translation_ref_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fl_builder_enabled', '_et_pb_use_builder', '_et_pb_ab_bounce_rate_limit', '_et_pb_ab_stats_refresh_interval', '_et_pb_enable_shortcode_tracking', '_et_pb_custom_css', '_et_pb_light_text_color', '_et_pb_dark_text_color', '_et_pb_content_area_background_color', '_et_pb_section_background_color', '_elementor_data', '_elementor_template_type', '_elementor_controls_usage', '_elementor_css', '_wp_attachment_image_alt', 'panels_data', '_in_translation_ref_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fl_builder_enabled', '_et_pb_use_builder', '_et_pb_ab_bounce_rate_limit', '_et_pb_ab_stats_refresh_interval', '_et_pb_enable_shortcode_tracking', '_et_pb_custom_css', '_et_pb_light_text_color', '_et_pb_dark_text_color', '_et_pb_content_area_background_color', '_et_pb_section_background_color', '_elementor_data', '_elementor_template_type', '_elementor_controls_usage', '_elementor_css', '_wp_attachment_image_alt', 'panels_data', '_in_translation_ref_hash');

