-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('axdt_spring', 'axdt_summer', 'axdt_fall', 'axdt_winter');

