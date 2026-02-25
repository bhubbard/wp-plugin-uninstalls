-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('freshdesk_options', 'freshdesk_feedback_options', 'wo_license_information', 'wp_oauth_activation_time', 'wp_oauth_server_mapping_settings', 'wo_options', 'wo_license_key', 'wp_oauth_server_db_version', 'wpoauth_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fd_ticket_id', 'redirect_uri', 'client_id', 'client_secret', 'scope', 'grant_types', 'user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('fd_ticket_id', 'redirect_uri', 'client_id', 'client_secret', 'scope', 'grant_types', 'user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('fd_ticket_id', 'redirect_uri', 'client_id', 'client_secret', 'scope', 'grant_types', 'user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fd_ticket_id', 'redirect_uri', 'client_id', 'client_secret', 'scope', 'grant_types', 'user_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wo_grant_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wo_grant_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wo_grant_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wo_grant_%';

