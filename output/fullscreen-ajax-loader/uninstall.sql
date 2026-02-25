-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_background_color', 'fs_background_opacity', 'fs_loader_scale', 'fs_wc_compat', 'fs_loader_img', 'fs_template', 'fs_exclude_urls', 'fs_exclude_params');

