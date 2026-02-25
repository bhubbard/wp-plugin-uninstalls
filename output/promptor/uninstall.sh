#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'promptor_wizard_completed'
wp option delete 'promptor_wizard_dismissed'
wp option delete 'promptor_db_version'
wp option delete 'promptor_first_lead_captured'
wp option delete 'promptor_api_settings'
wp option delete 'promptor_query_count'
wp option delete 'promptor_contexts'
wp option delete 'promptor_embed_step_completed'
wp option delete 'promptor_ui_settings'
wp option delete 'promptor_telemetry_notice_dismissed'
wp option delete 'promptor_telemetry_coupon_notice_dismissed'
wp option delete 'promptor_telemetry_enabled'
wp option delete 'promptor_telemetry_id'
wp option delete 'promptor_telemetry_queue'
wp option delete 'promptor_telemetry_step_1_completed'
wp option delete 'promptor_telemetry_step_2_completed'
wp option delete 'promptor_telemetry_step_3_completed'
wp option delete 'promptor_telemetry_kb_count'
wp option delete 'promptor_telemetry_kb_items_total'
wp option delete 'promptor_telemetry_first_query_sent'
wp option delete 'promptor_telemetry_queries_total'
wp option delete 'promptor_telemetry_first_lead_captured'
wp option delete 'promptor_telemetry_leads_total'
wp option delete 'promptor_telemetry_last_send'
wp option delete 'promptor_telemetry_enabled_at'
wp option delete 'promptor_crawler_settings'
wp option delete 'promptor_notification_settings'
wp option delete 'promptor_webhook_settings'
wp option delete 'promptor_limit_reset_date'
wp option delete 'promptor_activation_time'

# Delete Transients
wp transient delete 'promptor_activation_redirect'
wp transient delete 'promptor_full_changelog'
wp transient delete 'promptor_latest_changelog'
wp transient delete 'promptor_api_connection_success'
wp transient delete 'settings_errors'
wp transient delete 'promptor_license_status_check'

# Clear Cron Jobs
wp cron event delete 'promptor_daily_license_check'
wp cron event delete 'promptor_telemetry_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'promptor_onboarding_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'promptor_onboarding_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'promptor_onboarding_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'promptor_onboarding_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'promptor_admin_visits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'promptor_admin_visits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'promptor_admin_visits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'promptor_admin_visits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'promptor_first_admin_visit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'promptor_first_admin_visit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'promptor_first_admin_visit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'promptor_first_admin_visit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'promptor_review_prompt_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'promptor_review_prompt_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'promptor_review_prompt_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'promptor_review_prompt_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'promptor_review_shown_for_lead'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'promptor_review_shown_for_lead'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'promptor_review_shown_for_lead'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'promptor_review_shown_for_lead'"
