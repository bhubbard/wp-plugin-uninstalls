-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookie_notice_options', 'cookie_notice_privacy_consent', 'cookie_notice_version', 'cookie_notice_status', 'cookie_notice_app_analytics', 'cookie_notice_app_blocking', 'cookie_notice_privacy_consent_contactform7', 'cookie_notice_privacy_consent_easydigitaldownloads', 'cookie_notice_privacy_consent_formidableforms', 'cookie_notice_privacy_consent_mailchimp', 'cookie_notice_privacy_consent_woocommerce', 'cookie_notice_privacy_consent_wordpress', 'cookie_notice_privacy_consent_wpforms', 'cookie_notice_app_token', 'cookie_notice_app_quick_config', 'cookie_notice_app_subscriptions', 'cookie_notice_config_update', 'cn_show_welcome');
DELETE FROM wp_options WHERE option_name LIKE 'cookie_notice_privacy_consent_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pvc_dashboard');
DELETE FROM wp_usermeta WHERE meta_key IN ('pvc_dashboard');
DELETE FROM wp_termmeta WHERE meta_key IN ('pvc_dashboard');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pvc_dashboard');

