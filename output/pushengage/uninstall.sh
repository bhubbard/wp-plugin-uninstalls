#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pe_notifications_row_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe_notification_%'"
wp option delete 'pushengage_whatsapp_click_to_chat'
wp option delete 'pushengage_settings'
wp option delete 'pushengage_wa_automation_campaigns'
wp option delete 'pushengage_whatsapp_settings'
wp option delete 'pushengage_encryption_key'

# Delete Transients
wp transient delete 'pushengage_activation_redirect'
wp transient delete 'pushengage_debug_system_info'
wp transient delete 'pushengage_transient_error'
wp transient delete 'pushengage_wp_metrics_whatsapp_tracking'
wp transient delete 'pe_subscription_plan_type'

# Clear Cron Jobs
wp cron event delete 'pushengage_send_weekly_metrics'
wp cron event delete 'pushengage_check_abandoned_carts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pe_push_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pe_push_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pe_push_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pe_push_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pe_override_scheduled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pe_override_scheduled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pe_override_scheduled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pe_override_scheduled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pe_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pe_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pe_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pe_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pushengage_custom_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pushengage_custom_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pushengage_custom_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pushengage_custom_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sedule_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sedule_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sedule_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sedule_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushengage_subscriber_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushengage_subscriber_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushengage_subscriber_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushengage_subscriber_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushengage_woo_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushengage_woo_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushengage_woo_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushengage_woo_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushengage_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushengage_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushengage_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushengage_review_notice'"
