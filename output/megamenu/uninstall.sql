-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('megamenu_dismissed_notices', 'megamenu_install_date', 'megamenu_settings', 'megamenu_failed_to_write_css_to_filesystem', 'megamenu_locations', 'megamenu_initial_version', 'wbcr_clearfy_cache_options', 'megamenu_toggle_blocks', 'megamenu_version', 'megamenu_themes_last_updated', 'megamenu_multisite_share_themes', 'megamenu_css_last_updated', 'megamenu_css_version', 'megamenu_themes', 'megamenu_css', 'megamenu_css_version', 'megamenu_css_last_updated');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'megamenu_css_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_megamenu', '_elementor_data', '_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_megamenu', '_elementor_data', '_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_megamenu', '_elementor_data', '_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_megamenu', '_elementor_data', '_elementor_template_type');

