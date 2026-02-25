-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appscreo_vcss_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scc_active', '_scc_code_type', '_scc_loading_method', '_scc_loading_locations', '_scc_priority', '_scc_minify_enabled', '_scc_css_preprocessor', '_scc_linking_type', '_scc_loading_conditions', '_scc_custom_permalink', '_scc_css_optimize_enabled', '_scc_code_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scc_active', '_scc_code_type', '_scc_loading_method', '_scc_loading_locations', '_scc_priority', '_scc_minify_enabled', '_scc_css_preprocessor', '_scc_linking_type', '_scc_loading_conditions', '_scc_custom_permalink', '_scc_css_optimize_enabled', '_scc_code_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scc_active', '_scc_code_type', '_scc_loading_method', '_scc_loading_locations', '_scc_priority', '_scc_minify_enabled', '_scc_css_preprocessor', '_scc_linking_type', '_scc_loading_conditions', '_scc_custom_permalink', '_scc_css_optimize_enabled', '_scc_code_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scc_active', '_scc_code_type', '_scc_loading_method', '_scc_loading_locations', '_scc_priority', '_scc_minify_enabled', '_scc_css_preprocessor', '_scc_linking_type', '_scc_loading_conditions', '_scc_custom_permalink', '_scc_css_optimize_enabled', '_scc_code_position');

