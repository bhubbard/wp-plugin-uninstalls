-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('API_Key', 'Channels_username', 'MaxHeight', 'Background');

