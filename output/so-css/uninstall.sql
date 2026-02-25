-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siteorigin_installer_admin_dismissed', 'siteorigin_premium_affiliate_id', 'siteorigin_installer', 'siteorigin_custom_file', 'so_css_output_location', 'so_css_editor_theme', 'so_css_version', 'siteorigin_installer_product_data');
DELETE FROM wp_options WHERE option_name LIKE '%]';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('socss_hide_gs');
DELETE FROM wp_usermeta WHERE meta_key IN ('socss_hide_gs');
DELETE FROM wp_termmeta WHERE meta_key IN ('socss_hide_gs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('socss_hide_gs');

