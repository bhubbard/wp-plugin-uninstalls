-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_mint_compliance', '_mint_integration_settings', 'mint_contact_primary_fields', '_mint_recaptcha_settings', '_mrm_general_preference', 'mint_notice_update', 'mrm_contact_columns', '_mrm_email_settings', '_mrm_general_footer_watermark', '_mrm_optin_settings', '_mrm_woocommerce_settings', 'mint_bounce_key', 'mail_mint_hide_wc_database_update_notice', 'mail_mint_hide_template_table_update_notice', 'mrm_email_service_settings', 'mail_mint_db_version', 'mail_mint_db_1140_version_updated', 'mail_mint_db_1152_version_updated', 'mail_mint_version', '_mrm_business_basic_info_setting', 'mint_post_image_size', 'mail_mint_capabilities_assigned_to_admin', '_mrm_business_social_info_setting', 'mail_mint_hide_database_update_notice', '_is_show_blackfriday_banner', 'woocommerce_tax_display_cart', 'woocommerce_tax_total_display', '_mailmint_form_dismissed', '_mrm_general_user_signup', '_mrm_general_comment_form_subscription', '_mrm_general_unsubscriber_settings', 'mail-mint_allow_tracking', 'mailmint_contacts_added', 'mailmint_install_timestamp', 'mailmint_automation_used', 'woocommerce_currency_pos', 'woocommerce_custom_orders_table_enabled', '_mint_advanced_settings', '_mrm_general_plugin_data_delete', 'current_db_version', 'test-telemetry-plugin_allow_tracking', 'wpfnl_community_banner_permanently_hidden', 'wpfnl_community_banner_temporarily_hidden', 'mint_hide_checklist', 'mailmint_show_setup_wizard', 'mailmint_installing', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '_mrm_general_%';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mailmint_email_template_html_content', 'mailmint_email_template_json_content', 'mailmint_email_template_thumbnail', '_wpfnl_funnel_type', 'mint_subscribe_permission', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('mailmint_email_template_html_content', 'mailmint_email_template_json_content', 'mailmint_email_template_thumbnail', '_wpfnl_funnel_type', 'mint_subscribe_permission', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('mailmint_email_template_html_content', 'mailmint_email_template_json_content', 'mailmint_email_template_thumbnail', '_wpfnl_funnel_type', 'mint_subscribe_permission', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mailmint_email_template_html_content', 'mailmint_email_template_json_content', 'mailmint_email_template_thumbnail', '_wpfnl_funnel_type', 'mint_subscribe_permission', '_wp_page_template');

