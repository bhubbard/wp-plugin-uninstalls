-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ele-ui-color-scheme-restoration-settings', 'light_mode_colors', 'dark_mode_colors', 'brand_colors');

