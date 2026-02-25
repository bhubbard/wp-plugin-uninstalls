-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csm_construction', 'csm_activate', 'csm_opacity', 'csm_img1', 'csm_background_color');

