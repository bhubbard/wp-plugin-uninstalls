-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dolupalo_2fa_users_count', 'dolupalo_smtp_config_required', 'dolupalo_plugin_activated', 'smtp_host', 'smtp_port', 'smtp_username', 'smtp_password', 'smtp_auth', 'smtp_secure', 'dolupalo_enable_2fa', 'dolupalo_2fa_required_roles', 'dolupalo_enable_backup_codes', 'dolupalo_passwordless_timeout', 'dolupalo_last_otpauth_debug');
DELETE FROM wp_options WHERE option_name LIKE 'dolupalo_activation_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'dolupalo_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'dolupalo_2fa_pending_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dolutech_passwordless_token', 'dolupalo_passwordless_token', 'dolupalo_2fa_enabled', 'dolupalo_2fa_secret', 'dolupalo_backup_codes', 'dolupalo_2fa_secret_temp');
DELETE FROM wp_usermeta WHERE meta_key IN ('dolutech_passwordless_token', 'dolupalo_passwordless_token', 'dolupalo_2fa_enabled', 'dolupalo_2fa_secret', 'dolupalo_backup_codes', 'dolupalo_2fa_secret_temp');
DELETE FROM wp_termmeta WHERE meta_key IN ('dolutech_passwordless_token', 'dolupalo_passwordless_token', 'dolupalo_2fa_enabled', 'dolupalo_2fa_secret', 'dolupalo_backup_codes', 'dolupalo_2fa_secret_temp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dolutech_passwordless_token', 'dolupalo_passwordless_token', 'dolupalo_2fa_enabled', 'dolupalo_2fa_secret', 'dolupalo_backup_codes', 'dolupalo_2fa_secret_temp');

