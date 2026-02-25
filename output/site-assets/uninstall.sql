-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_assets_manage', 'site_assets_view', 'site_assets_position', 'site_assets_style', 'site_assets_style_custom_border_size', 'site_assets_style_custom_border_color', 'site_assets_style_custom_title_color', 'site_assets_style_custom_link_color', 'site_assets_style_custom_hover_color');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_site_assets_urls');
DELETE FROM wp_usermeta WHERE meta_key IN ('_site_assets_urls');
DELETE FROM wp_termmeta WHERE meta_key IN ('_site_assets_urls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_site_assets_urls');

