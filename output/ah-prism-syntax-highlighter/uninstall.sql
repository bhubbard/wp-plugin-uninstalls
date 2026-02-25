-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notice_warn_theme_css', 'custom_prism_js', 'default_language', 'default_inline', 'default_line_numbers', 'prism-settings-group', 'custom_prism_css');

