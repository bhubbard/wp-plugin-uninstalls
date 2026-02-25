-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('promptor_wizard_completed', 'promptor_wizard_dismissed', 'promptor_db_version', 'promptor_first_lead_captured', 'promptor_api_settings', 'promptor_query_count', 'promptor_contexts', 'promptor_embed_step_completed', 'promptor_ui_settings', 'promptor_telemetry_notice_dismissed', 'promptor_telemetry_coupon_notice_dismissed', 'promptor_telemetry_enabled', 'promptor_telemetry_id', 'promptor_telemetry_queue', 'promptor_telemetry_step_1_completed', 'promptor_telemetry_step_2_completed', 'promptor_telemetry_step_3_completed', 'promptor_telemetry_kb_count', 'promptor_telemetry_kb_items_total', 'promptor_telemetry_first_query_sent', 'promptor_telemetry_queries_total', 'promptor_telemetry_first_lead_captured', 'promptor_telemetry_leads_total', 'promptor_telemetry_last_send', 'promptor_telemetry_enabled_at', 'promptor_crawler_settings', 'promptor_notification_settings', 'promptor_webhook_settings', 'promptor_limit_reset_date', 'promptor_activation_time', 'promptor_activation_redirect', 'promptor_full_changelog', 'promptor_latest_changelog', 'promptor_api_connection_success', 'settings_errors', 'promptor_license_status_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('promptor_onboarding_dismissed', 'promptor_admin_visits', 'promptor_first_admin_visit', 'promptor_review_prompt_dismissed', 'promptor_review_shown_for_lead');
DELETE FROM wp_usermeta WHERE meta_key IN ('promptor_onboarding_dismissed', 'promptor_admin_visits', 'promptor_first_admin_visit', 'promptor_review_prompt_dismissed', 'promptor_review_shown_for_lead');
DELETE FROM wp_termmeta WHERE meta_key IN ('promptor_onboarding_dismissed', 'promptor_admin_visits', 'promptor_first_admin_visit', 'promptor_review_prompt_dismissed', 'promptor_review_shown_for_lead');
DELETE FROM wp_commentmeta WHERE meta_key IN ('promptor_onboarding_dismissed', 'promptor_admin_visits', 'promptor_first_admin_visit', 'promptor_review_prompt_dismissed', 'promptor_review_shown_for_lead');

