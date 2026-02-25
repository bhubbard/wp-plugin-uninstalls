-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_shadow';
DELETE FROM wp_options WHERE option_name LIKE '%_theme';
DELETE FROM wp_options WHERE option_name LIKE '%_color';
DELETE FROM wp_options WHERE option_name LIKE '%_startingpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_hoverstart';
DELETE FROM wp_options WHERE option_name LIKE '%_smoothing';
DELETE FROM wp_options WHERE option_name LIKE '%_smoothingamount';

