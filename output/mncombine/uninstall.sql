-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mn_comine_assets', 'mn_compression_engine', 'mn_compile_mode', 'mn_force_combine', 'mn_css_compression', 'mn_exclude_css_regex', 'mn_exclude_js_regex');

