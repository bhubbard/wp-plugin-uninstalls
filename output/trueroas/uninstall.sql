-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trueroas_fb_pixel_enabled', 'trueroas_fb_pixel_id');

