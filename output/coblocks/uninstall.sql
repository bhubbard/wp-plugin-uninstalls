-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coblocks_date_installed', 'wpnux_export_data', 'coblocks_google_recaptcha_site_key', 'coblocks_google_recaptcha_secret_key', 'coblocks_google_maps_api_key', 'coblocks_site_design_controls_enabled', 'coblocks_site_content_controls_enabled', 'coblocks_layout_selector_controls_enabled', 'coblocks_custom_colors_controls_enabled', 'coblocks_gradient_presets_enabled', 'coblocks_color_panel_controls_enabled', 'coblocks_typography_controls_enabled', 'coblocks_animation_controls_enabled', 'coblocks_template_parts_query');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_coblocks_accordion_ie_support', '_coblocks_attr', '_coblocks_dimensions', '_coblocks_responsive_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('_coblocks_accordion_ie_support', '_coblocks_attr', '_coblocks_dimensions', '_coblocks_responsive_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('_coblocks_accordion_ie_support', '_coblocks_attr', '_coblocks_dimensions', '_coblocks_responsive_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_coblocks_accordion_ie_support', '_coblocks_attr', '_coblocks_dimensions', '_coblocks_responsive_height');

