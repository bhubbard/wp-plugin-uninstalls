-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsr_tiktok_global_settings', 'wpsr_tiktok_connected_sources_config', 'wpsr_tiktok_local_avatars', 'wpsr_tiktok_revoke_platform_data');
DELETE FROM wp_options WHERE option_name LIKE '%_global_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpsr_template_config', '_wpsr_template_styles_config', '_wpsn_elementor_ids', '_wpsn_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpsr_template_config', '_wpsr_template_styles_config', '_wpsn_elementor_ids', '_wpsn_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpsr_template_config', '_wpsr_template_styles_config', '_wpsn_elementor_ids', '_wpsn_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpsr_template_config', '_wpsr_template_styles_config', '_wpsn_elementor_ids', '_wpsn_ids');

