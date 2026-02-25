-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aweber_devfacile_oauth_id', 'aweber_devfacile_oauth_removed', 'aweber_devfacile_settings_lists');

