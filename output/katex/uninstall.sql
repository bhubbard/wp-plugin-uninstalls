-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('katex_load_assets_conditionally', 'katex_enable_latex_shortcode', 'katex_version', 'katex_use_jsdelivr');

