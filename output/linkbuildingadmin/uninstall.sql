-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lba_uid', 'lba_automatic', 'lba_automatic_add');

