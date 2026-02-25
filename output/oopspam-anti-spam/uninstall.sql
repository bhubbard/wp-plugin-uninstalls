-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oopspamantispam_settings', 'oopspamantispam_contextai_settings', 'oopspam_rt_db_version', 'oopspam_db_version', 'manual_moderation_settings', 'oopspam_admin_emails', 'oopspamantispam_misc_settings', 'oopspamantispam_privacy_settings', 'oopspamantispam_ratelimit_settings', 'woocommerce_feature_order_attribution_enabled', 'oopspamantispam_privacy_migration_completed', 'oopspam_wizard_completed', 'oopspamantispam_ipfiltering_settings', 'oopspam_countryallowlist', 'oopspam_countryblocklist', 'oopspam_country_always_allow', 'oopspam_languageallowlist', 'over_rate_limit', 'oopspam_proxy_notice_dismissed', 'oopspam-activation-date', 'oopspam_is_check_for_length', 'oopspam_bulk_processed_ids', 'oopspam_activation_redirect', 'oopspam_options_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

