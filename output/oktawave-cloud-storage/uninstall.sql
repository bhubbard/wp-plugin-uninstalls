-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ocs_settings', 'ocs_settings_isconfigured', 'ocs_settings_ismigrated');

