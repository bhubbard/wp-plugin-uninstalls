-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_language', 'default_inline', 'default_line_numbers', 'custom_prism_css', 'custom_prism_js', 'notice_warn_theme_css');

