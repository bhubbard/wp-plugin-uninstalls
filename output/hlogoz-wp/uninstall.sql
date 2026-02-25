-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('HLogoZ_gen', 'HLogoZ_hide', 'HLogoZ_preDates', 'HLogoZ_preImg', 'HLogoZ_custom', 'HLogoZ_count');

