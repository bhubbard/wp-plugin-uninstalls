-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jlconverttax-save-hierarchy', 'jlconverttax-from-taxonomy', 'jlconverttax-to-taxonomy', 'jlconverttax-checked-categories');

