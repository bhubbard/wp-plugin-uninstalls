-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('patternswp_hide_theme_patterns', 'patternswp_hide_uncategorized_patterns', 'patternswp_hide_core_patterns', 'patternswp_plugin_license_data', 'patternswp_license_key', 'patternswp_category_type', 'patternswp_cache_cleared', 'patternswp_activation_redirect');

