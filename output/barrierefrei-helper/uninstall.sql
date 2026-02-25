-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('barrierefrei_helper_font_size', 'barrierefrei_helper_color_choice', 'barrierefrei_helper_contrast', 'barrierefrei_helper_toc_enabled', 'barrierefrei_helper_toc_tag', 'barrierefrei_helper_last_cache_clear');

