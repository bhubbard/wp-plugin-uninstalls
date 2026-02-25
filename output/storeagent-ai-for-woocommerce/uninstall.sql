-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saai_weekly_update_schedule_time', 'saai_notification_retention_days', 'woocommerce_feature_custom_order_tables_enabled', 'active_sitewide_plugins', 'saai_onboarding_wizard_status', 'saai_chat_widget_settings', 'saai_chat_post_types_settings', 'saai_chat_post_types', 'storeagent_api_connected', 'storeagentai_installed_by', 'saai_ai_memory_bulk_action_notice');
DELETE FROM wp_options WHERE option_name LIKE 'saai_%';
DELETE FROM wp_options WHERE option_name LIKE 'saai_product_question_validation_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_product_id', '_original_question', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_product_id', '_original_question', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_product_id', '_original_question', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_product_id', '_original_question', 'rating');

