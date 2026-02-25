-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcf_legacy_free', 'quick-contact-form-settings-1', 'quick-contact-form-settings-2', 'post-smtp-recommendation-notice-hidden', 'post_smtp_global_recommendation_notice_hidden', 'qcf_akismet', 'qcf_messageoptions', 'qcf_setup', 'qcf_email', 'qcf_emailmessage', 'qcf_message', 'qpp_key', 'qcf_smtp', 'qcf_mailinglist', 'qcf_activecampaign', 'qcf_newlist', 'qcf_collected', 'qcf_wallace', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'qcf-admin-notice', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'qcf_messages%';
DELETE FROM wp_options WHERE option_name LIKE 'qcf_settings%';
DELETE FROM wp_options WHERE option_name LIKE 'qcf_attach%';
DELETE FROM wp_options WHERE option_name LIKE 'qcf_style%';
DELETE FROM wp_options WHERE option_name LIKE 'qcf_reply%';
DELETE FROM wp_options WHERE option_name LIKE 'qcf_error%';
DELETE FROM wp_options WHERE option_name LIKE 'qcf_autoresponder%';
DELETE FROM wp_options WHERE option_name LIKE 'qcf_emails%';
DELETE FROM wp_options WHERE option_name LIKE 'qcf_redirect%';

