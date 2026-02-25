-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('convesioconvert_data_exists', 'convesioconvert_consents', 'convesioconvert_site_id', 'convesioconvert_site_token', 'convesioconvert_verification_secret', 'convesioconvert_site_url', 'convesioconvert_user_email', 'convesioconvert_pause', 'woo_marketplace_customer_id', 'woo_marketplace_subscription_id', 'convesioconvert_smart_rating_dismissed', 'convesioconvert_smart_rating_last_fetch', 'convesioconvert_smart_rating_necessary_info', 'convesioconvert_terms_last_modification', 'active_sitewide_plugins', 'convesioconvert_activation_redirect', 'convesioconvert_dashboard_health_status', 'convesioconvert_health_status_fresh', 'convesioconvert_health_status', 'convesioconvert_consent_key', 'convesioconvert_integration_success_id', 'convesioconvert_onetime_notices', 'convesioconvert_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('convesioconvert_email_consent', '_convesioconvert_user_last_modification', 'wooMarketplaceCustomerId', 'first_name', 'last_name', 'edd_saved_cart');
DELETE FROM wp_usermeta WHERE meta_key IN ('convesioconvert_email_consent', '_convesioconvert_user_last_modification', 'wooMarketplaceCustomerId', 'first_name', 'last_name', 'edd_saved_cart');
DELETE FROM wp_termmeta WHERE meta_key IN ('convesioconvert_email_consent', '_convesioconvert_user_last_modification', 'wooMarketplaceCustomerId', 'first_name', 'last_name', 'edd_saved_cart');
DELETE FROM wp_commentmeta WHERE meta_key IN ('convesioconvert_email_consent', '_convesioconvert_user_last_modification', 'wooMarketplaceCustomerId', 'first_name', 'last_name', 'edd_saved_cart');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%/convesioconvert/email_consent';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%/convesioconvert/email_consent';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%/convesioconvert/email_consent';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%/convesioconvert/email_consent';

