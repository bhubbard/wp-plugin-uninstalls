-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('groupedvartable_option_mainsorter', 'groupedvartable_option_mainwidth', 'groupedvartable_option_buttonsenabled');

