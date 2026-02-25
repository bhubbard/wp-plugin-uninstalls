-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsletter_show_welcome', 'newsletter_addons_updated', 'newsletter_addons', 'newsletter_news_updated', 'newsletter_news', 'newsletter_news_dismissed', 'newsletter_diagnostic_send_calls', 'newsletter_main', 'newsletter_profile', 'newsletter_emails', 'newsletter_dismissed', 'newsletter_public_page_check', 'newsletter_install_time', 'wp_crontrol_paused', 'newsletter_diagnostic_cron_calls', 'newsletter_log_level', 'newsletter_logger_secret', 'newsletter_version', 'newsletter_main_version', 'newsletter_system_warnings', 'newsletter_promotion', 'newsletter_main_status', 'newsletter_statistics_available_version', 'newsletter_statistics_secret', 'newsletter_statistics', 'newsletter_subscription', 'newsletter_htmlforms', 'newsletter_antispam', 'newsletter_form', 'newsletter_customfields', 'newsletter_info', 'newsletter_lists', 'newsletter_subscription_lists', 'newsletter_template', 'newsletter_subscription_template', 'newsletter_system_status', 'newsletter', 'newsletter_profile_main', 'newsletter_main_info', 'newsletter_subscription_antibot', 'newsletter_main_smtp', 'newsletter_subscription_version', 'newsletter_subscription_first_install_time', 'newsletter_unsubscription_version', 'newsletter_unsubscription_first_install_time', 'newsletter_users_version', 'newsletter_users_first_install_time', 'newsletter_profile_version', 'newsletter_profile_first_install_time', 'newsletter_emails_version');
DELETE FROM wp_options WHERE option_name IN ('newsletter_emails_first_install_time', 'newsletter_system_version', 'newsletter_system_first_install_time', 'newsletter_main_first_install_time', 'newsletter_statistics_version', 'newsletter_statistics_first_install_time', 'newsletter_wp', 'newsletter_main_steps', 'newsletter_lock_engine', 'newsletter_stats_email_column_upgraded', 'newsletter_topbar', 'newsletter_license_data', 'newsletter_user_count', 'tnp_extensions_json', 'doing_cron', 'newsletter_transient_test', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_%';
DELETE FROM wp_options WHERE option_name LIKE '%_last_run';
DELETE FROM wp_options WHERE option_name LIKE '%_import_last';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_emails_%';
DELETE FROM wp_options WHERE option_name LIKE '%_log_level';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_backup_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_profile_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_customfields_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_profile_main_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_lists_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_lists_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_system_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_main_info_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_antibot_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_customfields_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_info_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_system_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_users_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_main_%';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_statistics_%';
DELETE FROM wp_options WHERE option_name LIKE '%_email';
DELETE FROM wp_options WHERE option_name LIKE 'newsletter_subscription_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', '_wp_attached_file');

