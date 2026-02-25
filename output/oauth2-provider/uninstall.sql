-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wo_license_information', 'wp_oauth_activation_time', 'wp_oauth_server_mapping_settings', 'wpoauth_server_private_key', 'wpoauth_server_public_key', 'wo_options', 'wo_license_key', 'wp_oauth_server_db_version', 'wpoauth_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('redirect_uri', 'client_id', 'client_secret', 'user_id', 'scope', 'grant_types', 'wo_permalink_notice_snooze_until', 'wo_dismiss_permalink_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('redirect_uri', 'client_id', 'client_secret', 'user_id', 'scope', 'grant_types', 'wo_permalink_notice_snooze_until', 'wo_dismiss_permalink_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('redirect_uri', 'client_id', 'client_secret', 'user_id', 'scope', 'grant_types', 'wo_permalink_notice_snooze_until', 'wo_dismiss_permalink_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('redirect_uri', 'client_id', 'client_secret', 'user_id', 'scope', 'grant_types', 'wo_permalink_notice_snooze_until', 'wo_dismiss_permalink_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wo_grant_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wo_grant_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wo_grant_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wo_grant_%';

