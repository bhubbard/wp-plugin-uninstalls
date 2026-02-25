-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epa_sys_settings', 'epa_stripe_settings', 'epa_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'epa_email_list', 'stripe_express_email_sender_from_email', 'epa_elements', 'epa_email_sender_from_name', 'epa_email_sender_from_email', 'epa_email_style_background_color', 'epa_email_style_body_background_color', 'epa_email_style_base_color', 'epa_email_style_text_color', 'epa_email_enable_custom_template', 'epa_email_template_name', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'epa_stripe_configs', 'epa_stripe_price_list');

