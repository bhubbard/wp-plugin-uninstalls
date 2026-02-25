-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siteorigin_panels_home_page_id', 'acf_version', 'rocket_lazyload_options', 'siteorigin_installer_admin_dismissed', 'siteorigin_premium_affiliate_id', 'siteorigin_installer', 'siteorigin_panels_settings', 'siteorigin_panels_display', 'siteorigin_panels_post_types', 'siteorigin_panels_is_using_bundled', 'siteorigin_panels_initial_version', 'rewrite_rules', 'siteorigin_panels_active_version', 'siteorigin_panels_widgets', 'siteorigin_panels_widget_dialog_tabs', 'siteorigin_installer_product_data', 'siteorigin_panels_layouts_directory_siteorigin_page_2', 'siteorigin_panels_activation_welcome');
DELETE FROM wp_options WHERE option_name LIKE 'origin_wcss:%';
DELETE FROM wp_options WHERE option_name LIKE 'origin_widgets_css_cache:%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('panels_data', 'so_panels_directory_enabled', '_wp_page_template', 'so_panels_hide_post_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('panels_data', 'so_panels_directory_enabled', '_wp_page_template', 'so_panels_hide_post_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('panels_data', 'so_panels_directory_enabled', '_wp_page_template', 'so_panels_hide_post_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('panels_data', 'so_panels_directory_enabled', '_wp_page_template', 'so_panels_hide_post_notice');

