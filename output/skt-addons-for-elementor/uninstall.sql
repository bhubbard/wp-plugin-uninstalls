-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_icon_manager_needs_update', 'elementor_load_fa4_shim', 'elementor_container_width', 'elementor_viewport_lg', 'elementor_viewport_md', 'sktaddonselementor_inactive_features', 'skt_addons_elementor_addons_activation_time', 'tablepress_tables', 'elementor_active_kit');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_wp_attachment_image_alt', '_elementor_data', '_elementor_page_settings', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_wp_attachment_image_alt', '_elementor_data', '_elementor_page_settings', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_wp_attachment_image_alt', '_elementor_data', '_elementor_page_settings', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_wp_attachment_image_alt', '_elementor_data', '_elementor_page_settings', 'thumbnail_id');

