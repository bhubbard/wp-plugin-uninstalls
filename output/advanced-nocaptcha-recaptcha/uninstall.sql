-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('c4wp_v3_failover_available', 'c4wp_admin_options', 'disallowed_keys', 'c4wp_network_notice_dismissed', 'c4wp_update_redirection_needed', 'c4wp_70_upgrade_complete', 'anr_admin_options', 'active_sitewide_plugins', 'c4wp_redirect_after_activation', 'fs_c4wp', 'c4wp_admin_options_errors', 'c4wp_config_file_hash');
DELETE FROM wp_options WHERE option_name LIKE '%update_notice_needed';
DELETE FROM wp_options WHERE option_name LIKE '%update_redirection_needed';
DELETE FROM wp_options WHERE option_name LIKE '%owner_notice_dismissed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nocaptcha_plugin_notice_ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('nocaptcha_plugin_notice_ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('nocaptcha_plugin_notice_ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nocaptcha_plugin_notice_ignore');

