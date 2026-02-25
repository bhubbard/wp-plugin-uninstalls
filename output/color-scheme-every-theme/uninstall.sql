-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynamic_theme_colors', 'cset_schemes', 'default_scheme', 'custom_schemes');

