-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tlwp_settings', 'wtlwp_one_click_user_status', 'tlwp_close_promotion_notice', 'tlwp_mailer_is_promotion_notice_dismissed', 'tlwp_mailer_is_tried', 'tlwp_db_version', 'tlwp_update_tasks_to_process', 'tlwp_update_processed_tasks', 'temporary_logins_data', 'tlwp_plugin_activation_time', 'tlwp_plugin_version', 'active_sitewide_plugins', 'tlwp_do_activation_redirect', 'wtlwp_one_click_user_id', 'wtlwp_one_click_user_active', 'tlwp_installing', 'tlwp_updating');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wtlwp_expire', '_wtlwp_user', '_wtlwp_created', '_wtlwp_max_login_limit', '_wtlwp_token', '_wtlwp_redirect_to', 'show_welcome_panel', 'locale', '_wtlwp_updated', '_wtlwp_last_login', '_wtlwp_login_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wtlwp_expire', '_wtlwp_user', '_wtlwp_created', '_wtlwp_max_login_limit', '_wtlwp_token', '_wtlwp_redirect_to', 'show_welcome_panel', 'locale', '_wtlwp_updated', '_wtlwp_last_login', '_wtlwp_login_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wtlwp_expire', '_wtlwp_user', '_wtlwp_created', '_wtlwp_max_login_limit', '_wtlwp_token', '_wtlwp_redirect_to', 'show_welcome_panel', 'locale', '_wtlwp_updated', '_wtlwp_last_login', '_wtlwp_login_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wtlwp_expire', '_wtlwp_user', '_wtlwp_created', '_wtlwp_max_login_limit', '_wtlwp_token', '_wtlwp_redirect_to', 'show_welcome_panel', 'locale', '_wtlwp_updated', '_wtlwp_last_login', '_wtlwp_login_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time';

