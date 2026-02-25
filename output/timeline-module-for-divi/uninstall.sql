-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmdivi_initial_version', 'tmdivi-installDate', 'tmdivi-v', 'tmdivi-type', 'tmdivi-defaultPlugin', 'tmdivi-Boxes-ratingDiv');

