-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tclci_options');
DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%';

