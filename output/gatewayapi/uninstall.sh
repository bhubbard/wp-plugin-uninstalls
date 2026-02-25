#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gatewayapi_version'
wp option delete 'gatewayapi_show_v2_notice'
wp option delete 'gwapi_token'
wp option delete 'gwapi_setup'
wp option delete 'gwapi_key'
wp option delete 'gwapi_secret'
wp option delete 'gwapi_2fa_enabled'
wp option delete 'gwapi_api_version'
wp option delete 'gwapi_default_sender'
wp option delete 'gwapi_default_send_speed'
wp option delete 'gwapi_contact_fields'
wp option delete 'gwapi_recaptcha_site_key'
wp option delete 'gwapi_recaptcha_secret_key'
wp option delete 'gwapi_recipient_fields'
wp option delete 'gwapi_default_cc'
wp option delete 'gwapi_sender'
wp option delete 'gwapi_2fa_required_roles'
wp option delete 'gwapi_2fa_grace_period'
wp option delete 'gwapi_2fa_allowed_countries'
wp option delete 'gwapi_2fa_remember_duration'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gwapi_rl_%' OR option_name LIKE '_site_transient_gwapi_rl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gwapi_2fa_pending_%' OR option_name LIKE '_site_transient_gwapi_2fa_pending_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gwapi_2fa_code_%' OR option_name LIKE '_site_transient_gwapi_2fa_code_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gwapi_2fa_token_%' OR option_name LIKE '_site_transient_gwapi_2fa_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gwapi_2fa_pending_phone_%' OR option_name LIKE '_site_transient_gwapi_2fa_pending_phone_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_is_ensure_recurring_actions_scheduled'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipients_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipients_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipients_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipients_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipient_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipient_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipient_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipient_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipient_tags_logic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipient_tags_logic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipient_tags_logic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipient_tags_logic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'encoding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'encoding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'encoding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'encoding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msisdn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msisdn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msisdn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msisdn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwapi_2fa_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwapi_2fa_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwapi_2fa_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwapi_2fa_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwapi_2fa_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwapi_2fa_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwapi_2fa_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwapi_2fa_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwapi_2fa_phone_changes_today'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwapi_2fa_phone_changes_today'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwapi_2fa_phone_changes_today'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwapi_2fa_phone_changes_today'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gwapi_2fa_phone_last_change_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gwapi_2fa_phone_last_change_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gwapi_2fa_phone_last_change_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gwapi_2fa_phone_last_change_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fixed_phone_numbers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fixed_phone_numbers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fixed_phone_numbers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fixed_phone_numbers'"
