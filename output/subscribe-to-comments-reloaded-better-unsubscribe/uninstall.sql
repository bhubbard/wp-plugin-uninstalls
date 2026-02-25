-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('subscribe_reloaded_manager_page', 'smtp_pass', 'smtp_user', 'stcrbe_last_run', 'stcrbe_unsubscribed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_stcr@_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_stcr@_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_stcr@_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_stcr@_%';

