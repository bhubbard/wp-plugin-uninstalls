-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tave-ignore-fields', 'tave-api-key', 'tave-studio-id', 'send-CF7', 'send-Tave', 'taveErrorLog');

