-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notifier_meta', 'notifier_ctc_enable', 'notifier_enable_abandonment_cart_tracking', 'notifier_api_key', 'notifier_enabled_triggers', 'notifier_api_activated', 'notifier_ctc_button_style', 'notifier_ctc_whatsapp_number', 'notifier_enable_async_triggers', 'notifier_enable_activity_log', 'notifier_abandonment_cart_cron_run_time', 'notifier_ctc_greeting_text', 'notifier_ctc_custom_button_image_url', 'notifier_custom_meta_keys', '_notifier_user_meta_keys', '_notifier_custom_meta_keys', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%api_activated';
DELETE FROM wp_options WHERE option_name LIKE '%hidden_custom_keys';
DELETE FROM wp_options WHERE option_name LIKE '%site_key';
DELETE FROM wp_options WHERE option_name LIKE '%api_key';
DELETE FROM wp_options WHERE option_name LIKE '%enabled_triggers';
DELETE FROM wp_options WHERE option_name LIKE '%enable_opt_in_checkbox_checkout';
DELETE FROM wp_options WHERE option_name LIKE '%checkout_opt_in_checkbox_text';
DELETE FROM wp_options WHERE option_name LIKE '%default_country_code';
DELETE FROM wp_options WHERE option_name LIKE 'notifier_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_country', 'billing_state', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_country', 'billing_state', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_country', 'billing_state', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_country', 'billing_state', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%trigger_enabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%trigger_enabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%trigger_enabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%trigger_enabled';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%data_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%data_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%data_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%data_fields';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%recipient_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%recipient_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%recipient_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%recipient_fields';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%trigger';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%trigger';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%trigger';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%trigger';

