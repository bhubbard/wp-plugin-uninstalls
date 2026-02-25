-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apex_settings_group', 'apexchat_settings_group', 'apexchat_version');

