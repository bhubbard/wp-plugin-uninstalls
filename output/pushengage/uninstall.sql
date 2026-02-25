-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pe_notifications_row_setting', 'pushengage_whatsapp_click_to_chat', 'pushengage_settings', 'pushengage_wa_automation_campaigns', 'pushengage_whatsapp_settings', 'pushengage_encryption_key', 'pushengage_activation_redirect', 'pushengage_debug_system_info', 'pushengage_transient_error', 'pushengage_wp_metrics_whatsapp_tracking', 'pe_subscription_plan_type');
DELETE FROM wp_options WHERE option_name LIKE 'pe_notification_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pe_push_options', 'pe_override_scheduled', '_pe_override', '_pushengage_custom_text', '_sedule_notification', 'pushengage_subscriber_ids', 'billing_address_1', 'billing_city', 'billing_state', 'billing_country', 'billing_postcode', 'pushengage_woo_notice', 'pushengage_review_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('pe_push_options', 'pe_override_scheduled', '_pe_override', '_pushengage_custom_text', '_sedule_notification', 'pushengage_subscriber_ids', 'billing_address_1', 'billing_city', 'billing_state', 'billing_country', 'billing_postcode', 'pushengage_woo_notice', 'pushengage_review_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('pe_push_options', 'pe_override_scheduled', '_pe_override', '_pushengage_custom_text', '_sedule_notification', 'pushengage_subscriber_ids', 'billing_address_1', 'billing_city', 'billing_state', 'billing_country', 'billing_postcode', 'pushengage_woo_notice', 'pushengage_review_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pe_push_options', 'pe_override_scheduled', '_pe_override', '_pushengage_custom_text', '_sedule_notification', 'pushengage_subscriber_ids', 'billing_address_1', 'billing_city', 'billing_state', 'billing_country', 'billing_postcode', 'pushengage_woo_notice', 'pushengage_review_notice');

