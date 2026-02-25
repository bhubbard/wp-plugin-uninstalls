-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sabaohmemcat_filtercontent', 'sabaohmemcat_filterreplace');
DELETE FROM wp_options WHERE option_name LIKE 'sabaohmemcat_%';

