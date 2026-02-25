#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notifier_meta'
wp option delete 'notifier_ctc_enable'
wp option delete 'notifier_enable_abandonment_cart_tracking'
wp option delete 'notifier_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_activated'"
wp option delete 'notifier_enabled_triggers'
wp option delete 'notifier_api_activated'
wp option delete 'notifier_ctc_button_style'
wp option delete 'notifier_ctc_whatsapp_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hidden_custom_keys'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%site_key'"
wp option delete 'notifier_enable_async_triggers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enabled_triggers'"
wp option delete 'notifier_enable_activity_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_opt_in_checkbox_checkout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%checkout_opt_in_checkbox_text'"
wp option delete 'notifier_abandonment_cart_cron_run_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_country_code'"
wp option delete 'notifier_ctc_greeting_text'
wp option delete 'notifier_ctc_custom_button_image_url'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_notifier_notice_%' OR option_name LIKE '_site_transient_notifier_notice_%'"
wp transient delete 'notifier_custom_meta_keys'
wp transient delete '_notifier_user_meta_keys'
wp transient delete '_notifier_custom_meta_keys'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%trigger_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%trigger_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%trigger_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%trigger_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%data_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%data_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%data_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%data_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%recipient_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%recipient_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%recipient_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%recipient_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
