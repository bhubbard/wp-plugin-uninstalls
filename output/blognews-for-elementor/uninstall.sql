-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_active_kit', 'elementor_container_width', 'elementor_stretched_section_container', 'blogfoel_all_widget_setting', 'elementor_maintenance_mode_mode', 'elementor_maintenance_mode_template_id', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blogfoel_display_condition', '_elementor_page_settings', 'template_type', '_wp_page_template', 'blogfoel_demo_post_id', 'post_type_posts', 'post_type_template', 'category_color', 'category_text_color', '_wp_attachment_image_alt', 'post_views_count', 'category-image-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('blogfoel_display_condition', '_elementor_page_settings', 'template_type', '_wp_page_template', 'blogfoel_demo_post_id', 'post_type_posts', 'post_type_template', 'category_color', 'category_text_color', '_wp_attachment_image_alt', 'post_views_count', 'category-image-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('blogfoel_display_condition', '_elementor_page_settings', 'template_type', '_wp_page_template', 'blogfoel_demo_post_id', 'post_type_posts', 'post_type_template', 'category_color', 'category_text_color', '_wp_attachment_image_alt', 'post_views_count', 'category-image-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blogfoel_display_condition', '_elementor_page_settings', 'template_type', '_wp_page_template', 'blogfoel_demo_post_id', 'post_type_posts', 'post_type_template', 'category_color', 'category_text_color', '_wp_attachment_image_alt', 'post_views_count', 'category-image-id');

