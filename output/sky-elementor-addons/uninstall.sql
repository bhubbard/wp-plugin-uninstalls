-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sky_addons_inactive_extensions', 'elementor_css_print_method', 'sky_addons_pro_license_key', 'elementor_viewport_lg', 'elementor_viewport_md', 'sky_addons_installed', 'sky_addons_first_version', 'sky_addons_version', 'sky_black_friday_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_elementor_remote_info_api_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sky_video_link_meta', '_elementor_template_type', 'wowdevs_theme_builder_type', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('sky_video_link_meta', '_elementor_template_type', 'wowdevs_theme_builder_type', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('sky_video_link_meta', '_elementor_template_type', 'wowdevs_theme_builder_type', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sky_video_link_meta', '_elementor_template_type', 'wowdevs_theme_builder_type', '_wp_attachment_image_alt');

