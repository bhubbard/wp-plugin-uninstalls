-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themerain_custom_fonts_counter', 'themerain_custom_fonts', 'themerain_adobe_fonts', 'themerain_adobe_fonts_id', 'themerain_portfolio_slug');

