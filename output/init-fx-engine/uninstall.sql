-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('init_plugin_suite_fx_engine_keywords', 'init_plugin_suite_fx_engine_snowfall', 'init_plugin_suite_fx_engine_grayscale', 'init_plugin_suite_fx_engine_preloader', 'init_plugin_suite_fx_engine_inlinefmt');

