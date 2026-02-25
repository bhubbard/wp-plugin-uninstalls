-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('givecloud_settings_fields', 'givecloud_api_is_connected', 'givecloud_fundraising_forms');

