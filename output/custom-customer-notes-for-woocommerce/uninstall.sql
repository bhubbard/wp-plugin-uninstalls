-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'trustio_customer_notes_nmbr_of_customer_notes');
DELETE FROM wp_options WHERE option_name LIKE 'trustio_customer_notes_customer_note_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

