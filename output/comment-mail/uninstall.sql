-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'stc_enabled', 'registration', 'subscribe_reloaded_version', 'subscribe_reloaded_show_subscription_box', 'subscribe_reloaded_checked_by_default', 'subscribe_reloaded_enable_advanced_subscriptions', 'subscribe_reloaded_default_subscription_type', 'subscribe_reloaded_from_name', 'subscribe_reloaded_from_email', 'subscribe_reloaded_enable_double_check', 'subscribe_reloaded_notify_authors', 'subscribe_reloaded_admin_bcc', 'subscribe_reloaded_enable_admin_messages');
DELETE FROM wp_options WHERE option_name LIKE '%_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_install_time';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_imported_stcr_subs';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_imported_stcr_subs';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_imported_stcr_subs';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_imported_stcr_subs';

