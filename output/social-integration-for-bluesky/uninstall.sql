-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bluesky_schema_version', 'bluesky_accounts', 'bluesky_active_account', 'bluesky_global_settings', 'bluesky_settings_backup', 'bluesky_settings_backup_date', 'bluesky_account_auth_errors', 'bluesky_settings', 'bluesky_settings_secret', 'bluesky_settings__activation_date', 'bluesky_logout_message', 'bluesky_health_data');
DELETE FROM wp_options WHERE option_name LIKE '%_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_activation_date';
DELETE FROM wp_options WHERE option_name LIKE 'bluesky_circuit_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bluesky_account_id', '_bluesky_syndication_bs_post_info', 'bluesky_expired_creds_dismissed', 'bluesky_circuit_breaker_dismissed', '_bluesky_syndication_status', '_bluesky_syndication_accounts_completed', '_bluesky_syndication_failed_accounts', '_bluesky_syndication_retry_count', '_bluesky_syndicated', '_bluesky_syndication_scheduled', '_bluesky_syndication_text', '_bluesky_dont_syndicate', '_bluesky_syndication_accounts', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bluesky_account_id', '_bluesky_syndication_bs_post_info', 'bluesky_expired_creds_dismissed', 'bluesky_circuit_breaker_dismissed', '_bluesky_syndication_status', '_bluesky_syndication_accounts_completed', '_bluesky_syndication_failed_accounts', '_bluesky_syndication_retry_count', '_bluesky_syndicated', '_bluesky_syndication_scheduled', '_bluesky_syndication_text', '_bluesky_dont_syndicate', '_bluesky_syndication_accounts', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bluesky_account_id', '_bluesky_syndication_bs_post_info', 'bluesky_expired_creds_dismissed', 'bluesky_circuit_breaker_dismissed', '_bluesky_syndication_status', '_bluesky_syndication_accounts_completed', '_bluesky_syndication_failed_accounts', '_bluesky_syndication_retry_count', '_bluesky_syndicated', '_bluesky_syndication_scheduled', '_bluesky_syndication_text', '_bluesky_dont_syndicate', '_bluesky_syndication_accounts', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bluesky_account_id', '_bluesky_syndication_bs_post_info', 'bluesky_expired_creds_dismissed', 'bluesky_circuit_breaker_dismissed', '_bluesky_syndication_status', '_bluesky_syndication_accounts_completed', '_bluesky_syndication_failed_accounts', '_bluesky_syndication_retry_count', '_bluesky_syndicated', '_bluesky_syndication_scheduled', '_bluesky_syndication_text', '_bluesky_dont_syndicate', '_bluesky_syndication_accounts', '_wp_attachment_image_alt');

