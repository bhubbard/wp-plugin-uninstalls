-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailerpress_signup_confirmation', 'mailerpress_global_email_senders', 'mailerpress_default_settings', 'mailerpress_frequency_sending', 'mailerpress_email_services', 'mailerpress_global_typography', 'mailerpress_license_activated', 'mailerpress_bounce_config', 'mailerpress_theme', 'mailerpress_ai_config', 'mailerpress_fonts_v2', 'mailerpress_activated', 'mailerpress_version', 'rewrite_rules', 'mailerpress_plugin_version', 'mailerpress_default_categories_added', 'mailerpress_old_automation_tables_dropped', 'mailerpress_ab_test_scheduled', 'mailerpress_check_bounces_interval', 'woocommerce_currency_pos', 'mailerpress_webhook_configs', 'mailerpress_outgoing_webhook_configs', 'mailerpress_fonts', 'mailerpress_esp_config', 'mailerpress_senders', 'mailerpress_outgoing_webhook_secret', 'mailerpress_access_tokens_scheduled', 'mailerpress_import_chunks_migration_1_2_2', 'mailerpress_webhooks_disable_async', 'mailerpress_google_fonts', 'mailerpress_update_info', 'mailerpress_list', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_html';
DELETE FROM wp_options WHERE option_name LIKE 'cf7_mailerpress_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta', 'mailerpress_preferences', 'mailerpress_setup_completed', 'mailerpress_fullscreen', 'mailerpress_go_pro_notice', 'first_name', 'last_name', '_wp_attachment_image_alt', 'billing_first_name', 'billing_last_name', 'mailerpress_category_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta', 'mailerpress_preferences', 'mailerpress_setup_completed', 'mailerpress_fullscreen', 'mailerpress_go_pro_notice', 'first_name', 'last_name', '_wp_attachment_image_alt', 'billing_first_name', 'billing_last_name', 'mailerpress_category_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta', 'mailerpress_preferences', 'mailerpress_setup_completed', 'mailerpress_fullscreen', 'mailerpress_go_pro_notice', 'first_name', 'last_name', '_wp_attachment_image_alt', 'billing_first_name', 'billing_last_name', 'mailerpress_category_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta', 'mailerpress_preferences', 'mailerpress_setup_completed', 'mailerpress_fullscreen', 'mailerpress_go_pro_notice', 'first_name', 'last_name', '_wp_attachment_image_alt', 'billing_first_name', 'billing_last_name', 'mailerpress_category_id');

