-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pistonui_settings', 'pistonui_setup_completed', 'pistonui_setup_redirect', 'pistonui_enable_owl');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pistonui_template_status', '_pistonui_template_type', '_pistonui_display_location', '_pistonui_selected_pages', '_pistonui_selected_posts', '_pistonui_selected_categories', '_wp_page_template', '_elementor_edit_mode', '_elementor_data', '_elementor_version', 'pistonui_deps_notice_dismissed', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pistonui_template_status', '_pistonui_template_type', '_pistonui_display_location', '_pistonui_selected_pages', '_pistonui_selected_posts', '_pistonui_selected_categories', '_wp_page_template', '_elementor_edit_mode', '_elementor_data', '_elementor_version', 'pistonui_deps_notice_dismissed', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pistonui_template_status', '_pistonui_template_type', '_pistonui_display_location', '_pistonui_selected_pages', '_pistonui_selected_posts', '_pistonui_selected_categories', '_wp_page_template', '_elementor_edit_mode', '_elementor_data', '_elementor_version', 'pistonui_deps_notice_dismissed', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pistonui_template_status', '_pistonui_template_type', '_pistonui_display_location', '_pistonui_selected_pages', '_pistonui_selected_posts', '_pistonui_selected_categories', '_wp_page_template', '_elementor_edit_mode', '_elementor_data', '_elementor_version', 'pistonui_deps_notice_dismissed', '_wp_attachment_image_alt', 'thumbnail_id');

