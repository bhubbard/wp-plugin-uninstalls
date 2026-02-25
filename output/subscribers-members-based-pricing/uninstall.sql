-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'meowcrew_membersbasedpricing_show_subscriptions_plugin_hint');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mbp_included_categories', '_mbp_included_products', '_mbp_included_user_roles', '_mbp_included_users', '_mbp_is_suspended');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mbp_included_categories', '_mbp_included_products', '_mbp_included_user_roles', '_mbp_included_users', '_mbp_is_suspended');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mbp_included_categories', '_mbp_included_products', '_mbp_included_user_roles', '_mbp_included_users', '_mbp_is_suspended');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mbp_included_categories', '_mbp_included_products', '_mbp_included_user_roles', '_mbp_included_users', '_mbp_is_suspended');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_mbp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_mbp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_mbp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_mbp_%';

