-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ps_widget_for_zendesk_chat_via_api_review_time', 'ps_widget_for_zendesk_chat_via_api_dismiss_review_notice', 'ps_zendesk_chat_widget_api_code', 'ps_zendesk_chat_widget_api_delay_time', 'ps_zendesk_chat_widget_api_remove_data', 'ps_zendesk_chat_widget_api_code_status', 'widget_for_zendesk_chat_via_api_subscription_shown');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ps_zendesk_chat_widget_api_code_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('ps_zendesk_chat_widget_api_code_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('ps_zendesk_chat_widget_api_code_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ps_zendesk_chat_widget_api_code_disable');

