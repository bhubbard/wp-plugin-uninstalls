-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpo365_active_extensions', 'wpo365_options', 'mail_integration_365_plugin_ops', 'wpo365_insights_summary', 'wpo365_current_insights_year', 'wpo365_mail_authorization', 'mail_integration_365_plugin_ops_access_token', 'wpo365_msft_key', 'wpo365_x509_certificates', 'wpo_sync_v2_users_unscheduled', 'wpo365_wpmu_mode', 'wpo365_nonces', 'update_plugins', 'wpo365_plugins_updated', 'wpo365_secrets_expiration_hook_ensured');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('primary_blog');
DELETE FROM wp_usermeta WHERE meta_key IN ('primary_blog');
DELETE FROM wp_termmeta WHERE meta_key IN ('primary_blog');
DELETE FROM wp_commentmeta WHERE meta_key IN ('primary_blog');

