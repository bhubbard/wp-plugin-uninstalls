-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('everest_backup_enable_plugin_token', 'everest_backup_consent_optin', 'sidebars_widgets', 'woocommerce_permalinks', '_elementor_global_css', 'elementor-custom-breakpoints-files', 'everest_backup_ajax_manual_nonce', 'everest_backup_active_plugins', 'is_restore_completed', 'everest_backup_consent_skip', 'everest_backup_wp_cli_express', 'everest_backup_doing_scheduled_backup', 'everest_backup_migrate_clone_download', 'eb_post_restore_token', 'everest_backup_migrate_clone_download_retry', 'everest_backup_2fa_checked');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

