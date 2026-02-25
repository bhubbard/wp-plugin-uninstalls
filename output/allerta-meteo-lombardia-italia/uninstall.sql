-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amli_version_number', 'amli_last_update');
DELETE FROM wp_options WHERE option_name LIKE 'amli_%';

