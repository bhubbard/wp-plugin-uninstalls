-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widgets', 'elite_kit_extensions', 'ekl_widgets', 'elementor_css_print_method', 'elite_kit_lite_installed', 'ek_deactivation_feedback');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ek_library_type', '_elementor_template_type', '_ek_display_cond', '_ek_template_active', '_elementor_data', '_wp_page_template', '_wp_attachment_image_alt', 'ek_post_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ek_library_type', '_elementor_template_type', '_ek_display_cond', '_ek_template_active', '_elementor_data', '_wp_page_template', '_wp_attachment_image_alt', 'ek_post_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ek_library_type', '_elementor_template_type', '_ek_display_cond', '_ek_template_active', '_elementor_data', '_wp_page_template', '_wp_attachment_image_alt', 'ek_post_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ek_library_type', '_elementor_template_type', '_ek_display_cond', '_ek_template_active', '_elementor_data', '_wp_page_template', '_wp_attachment_image_alt', 'ek_post_views_count');

