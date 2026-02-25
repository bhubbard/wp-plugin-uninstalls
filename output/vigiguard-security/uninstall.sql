-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vigiguard_security_settings', 'vigiguard_security_keep_data_on_uninstall', 'vigiguard_last_file_check', 'vigiguard_security_db_version', 'update_plugins', 'vigiguard_security_settings_saved', 'vigiguard_security_activated');
DELETE FROM wp_options WHERE option_name LIKE 'vigiguard_lockout_%';
DELETE FROM wp_options WHERE option_name LIKE 'vigiguard_login_attempts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vigiguard_dismissed_headers_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('vigiguard_dismissed_headers_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('vigiguard_dismissed_headers_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vigiguard_dismissed_headers_notice');

