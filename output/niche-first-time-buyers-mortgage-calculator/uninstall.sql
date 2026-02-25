-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ftbmc_colour_1', 'ftbmc_colour_2', 'ftbmc_colour_3', 'ftbmc_colour_4', 'ftbmc_colour_5', 'rmc_colour_1', 'rmc_colour_2', 'rmc_colour_3', 'rmc_colour_4', 'rmc_colour_5', 'ssmc_colour_1', 'ssmc_colour_2', 'ssmc_colour_3');

