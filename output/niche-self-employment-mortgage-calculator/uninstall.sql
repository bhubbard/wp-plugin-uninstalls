-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssmc_colour_1', 'ssmc_colour_2', 'ssmc_colour_3');

