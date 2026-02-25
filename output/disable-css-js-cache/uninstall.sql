-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable_css_js_cache_radio', 'disable_css_js_exclude_paths', 'disable_css_js_cache_method', 'browser_caching_enabled', 'browser_cache_duration', 'browser_caching_settings_changed');

