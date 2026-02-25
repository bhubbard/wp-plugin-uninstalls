-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultimate-colors', 'ultimate_colors_customize', 'ultimate_colors');

