-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('silktide_version', 'silktide_api_key', 'silktide_last_notified');

