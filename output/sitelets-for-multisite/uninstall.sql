-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_active_kit', 'MULTISITE_SITELETS_license_key', 'MULTISITE_SITELETS_license_status', 'MULTISITE_SITELETS_site_limit', 'MULTISITE_SITELETS_selected_sites', 'MULTISITE_SITELETS_site_product', 'active_sitewide_plugins', 'MULTISITE_SITELETS_license_check', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_elementor_widgets_restrictor_options';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sitelet_permissions', '_original_post_id', '_original_post_revision', '_elementor_edit_mode', '_elementor_element_cache', '_elementor_data', '_elementor_version', '_elementor_controls_usage', '_elementor_template_type', '_elementor_page_assets', '_elementor_page_settings', '_sitelet_media');
DELETE FROM wp_usermeta WHERE meta_key IN ('sitelet_permissions', '_original_post_id', '_original_post_revision', '_elementor_edit_mode', '_elementor_element_cache', '_elementor_data', '_elementor_version', '_elementor_controls_usage', '_elementor_template_type', '_elementor_page_assets', '_elementor_page_settings', '_sitelet_media');
DELETE FROM wp_termmeta WHERE meta_key IN ('sitelet_permissions', '_original_post_id', '_original_post_revision', '_elementor_edit_mode', '_elementor_element_cache', '_elementor_data', '_elementor_version', '_elementor_controls_usage', '_elementor_template_type', '_elementor_page_assets', '_elementor_page_settings', '_sitelet_media');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sitelet_permissions', '_original_post_id', '_original_post_revision', '_elementor_edit_mode', '_elementor_element_cache', '_elementor_data', '_elementor_version', '_elementor_controls_usage', '_elementor_template_type', '_elementor_page_assets', '_elementor_page_settings', '_sitelet_media');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_published_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_published_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_published_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_published_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_published_by';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_published_by';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_published_by';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_published_by';

