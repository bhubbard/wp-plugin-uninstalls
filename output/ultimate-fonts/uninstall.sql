-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultimate_fonts_customize', 'ultimate-fonts', 'ultimate_fonts');

