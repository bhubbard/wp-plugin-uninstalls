-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mid_photocard_default_bg_image', 'mid_photocard_default_site_logo', 'mid_photocard_default_site_name', 'mid_photocard_default_site_icon', 'mid_photocard_default_bg_solid_1', 'mid_photocard_default_bg_solid_2', 'mid_photocard_default_bg_color_1', 'mid_photocard_default_bg_color_2', 'mid_photocard_default_title_color', 'mid_photocard_default_dc_bg_color', 'mid_photocard_default_dc_text_color', 'mid_photocard_default_site_logo_new', 'mid_photocard_site_logo_enabled', 'mid_photocard_site_icon_enabled', 'mid_photocard_title_shadow_enabled', 'mid_photocard_canvas_width', 'mid_photocard_canvas_height', 'mid_photocard_public_enabled', 'mid_photocard_default_comments_text', 'mid_photocard_copy_url_enabled');

