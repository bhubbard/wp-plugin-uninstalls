-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pgmb_accounts', 'pgmb_activated', 'mbp_misc', 'mbp_google_settings', 'mbp_quick_post_settings', 'mbp_review_notifications', 'mbp_welcome_message', 'mbp_request_key', 'mbp_api_key', 'mbp_api_token', 'mbp_site_key', 'mbp_debug_info', 'mbp_dashboard', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'pgmb_public_keys');
DELETE FROM wp_options WHERE option_name LIKE 'pgmb_location_import_last_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'pgmb_account_refresh_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade_running';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pgmb_queued_items', 'mbp_form_fields', '_mbp_is_autopost', 'mbp_last_error', '_mbp_autopost_template', '_pgmb_ap_template_id', '_pgmb_autopost_template', 'mbp_autopost_created', '_mbp_gutenberg_autopost', '_pgmb_scheduled_autopost', '_mbp_post_publish_date', '_pgmb_previous_post_id', 'mbp_autopost_checked', 'mbp_posts', 'mbp_errors');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pgmb_queued_items', 'mbp_form_fields', '_mbp_is_autopost', 'mbp_last_error', '_mbp_autopost_template', '_pgmb_ap_template_id', '_pgmb_autopost_template', 'mbp_autopost_created', '_mbp_gutenberg_autopost', '_pgmb_scheduled_autopost', '_mbp_post_publish_date', '_pgmb_previous_post_id', 'mbp_autopost_checked', 'mbp_posts', 'mbp_errors');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pgmb_queued_items', 'mbp_form_fields', '_mbp_is_autopost', 'mbp_last_error', '_mbp_autopost_template', '_pgmb_ap_template_id', '_pgmb_autopost_template', 'mbp_autopost_created', '_mbp_gutenberg_autopost', '_pgmb_scheduled_autopost', '_mbp_post_publish_date', '_pgmb_previous_post_id', 'mbp_autopost_checked', 'mbp_posts', 'mbp_errors');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pgmb_queued_items', 'mbp_form_fields', '_mbp_is_autopost', 'mbp_last_error', '_mbp_autopost_template', '_pgmb_ap_template_id', '_pgmb_autopost_template', 'mbp_autopost_created', '_mbp_gutenberg_autopost', '_pgmb_scheduled_autopost', '_mbp_post_publish_date', '_pgmb_previous_post_id', 'mbp_autopost_checked', 'mbp_posts', 'mbp_errors');

