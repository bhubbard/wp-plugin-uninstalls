-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gatewayapi_version', 'gatewayapi_show_v2_notice', 'gwapi_token', 'gwapi_setup', 'gwapi_key', 'gwapi_secret', 'gwapi_2fa_enabled', 'gwapi_api_version', 'gwapi_default_sender', 'gwapi_default_send_speed', 'gwapi_contact_fields', 'gwapi_recaptcha_site_key', 'gwapi_recaptcha_secret_key', 'gwapi_recipient_fields', 'gwapi_default_cc', 'gwapi_sender', 'gwapi_2fa_required_roles', 'gwapi_2fa_grace_period', 'gwapi_2fa_allowed_countries', 'gwapi_2fa_remember_duration', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_is_ensure_recurring_actions_scheduled', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'gwapi_rl_%';
DELETE FROM wp_options WHERE option_name LIKE 'gwapi_2fa_pending_%';
DELETE FROM wp_options WHERE option_name LIKE 'gwapi_2fa_code_%';
DELETE FROM wp_options WHERE option_name LIKE 'gwapi_2fa_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'gwapi_2fa_pending_phone_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sender', 'recipients_count', 'campaign_tags', 'recipient_tags', 'recipient_tags_logic', 'start_time', 'end_time', 'status', 'encoding', 'msisdn', 'cc', 'number', 'name', 'gwapi_2fa_enabled', 'gwapi_2fa_phone', 'gwapi_2fa_phone_changes_today', 'gwapi_2fa_phone_last_change_date', 'enabled', 'order_state', 'countries', 'phone_field', 'fixed_phone_numbers');
DELETE FROM wp_usermeta WHERE meta_key IN ('sender', 'recipients_count', 'campaign_tags', 'recipient_tags', 'recipient_tags_logic', 'start_time', 'end_time', 'status', 'encoding', 'msisdn', 'cc', 'number', 'name', 'gwapi_2fa_enabled', 'gwapi_2fa_phone', 'gwapi_2fa_phone_changes_today', 'gwapi_2fa_phone_last_change_date', 'enabled', 'order_state', 'countries', 'phone_field', 'fixed_phone_numbers');
DELETE FROM wp_termmeta WHERE meta_key IN ('sender', 'recipients_count', 'campaign_tags', 'recipient_tags', 'recipient_tags_logic', 'start_time', 'end_time', 'status', 'encoding', 'msisdn', 'cc', 'number', 'name', 'gwapi_2fa_enabled', 'gwapi_2fa_phone', 'gwapi_2fa_phone_changes_today', 'gwapi_2fa_phone_last_change_date', 'enabled', 'order_state', 'countries', 'phone_field', 'fixed_phone_numbers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sender', 'recipients_count', 'campaign_tags', 'recipient_tags', 'recipient_tags_logic', 'start_time', 'end_time', 'status', 'encoding', 'msisdn', 'cc', 'number', 'name', 'gwapi_2fa_enabled', 'gwapi_2fa_phone', 'gwapi_2fa_phone_changes_today', 'gwapi_2fa_phone_last_change_date', 'enabled', 'order_state', 'countries', 'phone_field', 'fixed_phone_numbers');

