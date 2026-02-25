-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('card_oracle_settings', 'card_oracle_demo_reading_id', 'card_oracle_reading_list', 'card_oracle_mailchimp_api_key', 'card_oracle_integration', 'card_oracle_payment_provider', 'card_oracle_activecampaign_api_key', 'card_oracle_activecampaign_url', 'card_oracle_thenewsletter_key', 'card_oracle_thenewsletter_secret', 'co_wizard', 'card_oracle_powered_by', 'card_oracle_allow_email', 'card_oracle_from_email', 'card_oracle_from_email_name', 'card_oracle_stripe_sandbox', 'card_oracle_affiliate_link', 'rewrite_rules', 'active_sitewide_plugins', 'card_oracle_version', 'card_oracle_email_text', 'card_oracle_subscribe', 'card_oracle_email_consent_text', 'card_oracle_paypal_button_text', 'card_oracle_payment_button_text', 'card_oracle_paypal_currency', 'card_oracle_payment_currency', 'card_oracle_mailchimp_send', 'card_oracle_mailchimp_daily', 'card_oracle_multiple_positions', 'card_oracle_email_success', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'card_oracle_system_status_wp_version_check', 'card_oracle_orphaned_shortcodes', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'card_oracle_%';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'card_oracle_reading_limit_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('card_oracle_onboarding_dismissed', 'question_text', 'card_oracle_demo_package', '_wp_attachment_image_alt', 'payment_status', 'footer_text', 'before_cards_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('card_oracle_onboarding_dismissed', 'question_text', 'card_oracle_demo_package', '_wp_attachment_image_alt', 'payment_status', 'footer_text', 'before_cards_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('card_oracle_onboarding_dismissed', 'question_text', 'card_oracle_demo_package', '_wp_attachment_image_alt', 'payment_status', 'footer_text', 'before_cards_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('card_oracle_onboarding_dismissed', 'question_text', 'card_oracle_demo_package', '_wp_attachment_image_alt', 'payment_status', 'footer_text', 'before_cards_text');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_co_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_co_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_co_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_co_log_%';

