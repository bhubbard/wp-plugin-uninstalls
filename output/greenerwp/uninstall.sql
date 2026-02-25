-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('greenerwp_version', 'greenerwp_jpeg_quality', 'greenerwp_wpcf7_jquery_fix_enabled', 'greenerwp_web_fonts_disable', 'greenerwp_image_previews_enabled', 'greenerwp_recipes', 'greenerwp_statistics_enabled', 'greenerwp_image_previews_lazy_loading');
DELETE FROM wp_options WHERE option_name LIKE 'greenerwp_%';

