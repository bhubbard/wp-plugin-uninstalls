-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bf_sfd_max_file_size', 'bf_sfd_allow_editor_admin', 'bf_sfd_directory_auths', 'bf_sfd_auth_settings_changed', 'bf_sfd_directory_passwords', 'bf_sfd_auth_methods', 'bf_sfd_allowed_roles', 'bf_sfd_simple_auth_password', 'bf_sfd_auth_timeout', 'bf_sfd_menu_title', 'bf_sfd_enable_auth', 'bf_sfd_log_downloads', 'bf_sfd_security_level', 'bf_sfd_secure_directory_id', 'bf_sfd_target_directory', 'bf_sfd_download_logs');
DELETE FROM wp_options WHERE option_name LIKE 'bf_sfd_download_%';

