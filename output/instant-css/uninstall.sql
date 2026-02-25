-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icss_css', 'icss_version', 'icss_postcss', 'icss_lang', 'icss_theme', 'icss_preprocessor', 'icss_minify');

