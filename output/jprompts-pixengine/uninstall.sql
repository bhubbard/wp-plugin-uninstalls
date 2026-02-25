-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixengine_lazy_loading_enabled', 'pixengine_responsive_enabled', 'pixengine_picture_element', 'pixengine_quality', 'pixengine_max_width', 'pixengine_output_format', 'pixengine_avif_quality', 'pixengine_lazy_loading_exclude_first', 'pixengine_cache_enabled', 'pixengine_cache_max_age', 'pixengine_newsletter_dismissed', 'pixengine_usage_data');

