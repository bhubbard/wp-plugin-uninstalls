-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simply-static', 'simply-static-use-single', 'simply-static-use-build', 'simply-static-404-only', 'fs_accounts', 'active_sitewide_plugins', 'simply_static_delayed_until', 'simply_static_elementor_defaults_set', 'elementor_meta_generator_tag', 'elementor_css_print_method', 'elementor_lazy_load_background_images', 'elementor_element_cache_ttl', 'elementor_experiment-e_font_icon_svg', 'elementor_experiment-e_optimized_markup', 'wpseo-premium-redirects-base', 'simply_static_has_build_terms', 'simply_static_checks', 'simply_static_failed_tests');
DELETE FROM wp_options WHERE option_name LIKE 'simply-static-%';
DELETE FROM wp_options WHERE option_name LIKE '%_multisite_export_running';
DELETE FROM wp_options WHERE option_name LIKE '%_blog_exported';
DELETE FROM wp_options WHERE option_name LIKE '%_total_pages';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

