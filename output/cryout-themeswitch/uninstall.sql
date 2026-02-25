-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allowedthemes', 'cryout_favorite_themes', 'cryout_themeswitch', 'cryout_themeswitch_lasturl');

