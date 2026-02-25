-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpconsent_admin_notices', 'ihaf_activated', 'wpconsent_activated', 'wpconsent_usage_tracking_config', 'active_sitewide_plugins', 'wpconsent_install', 'wpconsent_scanner_data', 'wpconsent_connect_token', 'wpconsent_connect', 'wpconsent_settings', 'wpconsent_needs_google_consent', 'wpconsent_onboarding_redirect', 'wpconsent_translation_strings', 'wpconsent_needs_clarity_consent', 'wpconsent_preference_cookies', 'wpconsent_preference_slugs', 'wpconsent_just_activated', 'wpconsent_lite_just_activated');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpconsent_alt_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpconsent_scanner_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpconsent_auto_added', '_wpconsent_source_slug', 'wpconsent_admin_notices', 'wpconsent_dismissed_review_request', 'wpconsent_required', 'wpconsent_cookie_duration', 'wpconsent_cookie_id', 'wpconsent_service_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpconsent_auto_added', '_wpconsent_source_slug', 'wpconsent_admin_notices', 'wpconsent_dismissed_review_request', 'wpconsent_required', 'wpconsent_cookie_duration', 'wpconsent_cookie_id', 'wpconsent_service_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpconsent_auto_added', '_wpconsent_source_slug', 'wpconsent_admin_notices', 'wpconsent_dismissed_review_request', 'wpconsent_required', 'wpconsent_cookie_duration', 'wpconsent_cookie_id', 'wpconsent_service_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpconsent_auto_added', '_wpconsent_source_slug', 'wpconsent_admin_notices', 'wpconsent_dismissed_review_request', 'wpconsent_required', 'wpconsent_cookie_duration', 'wpconsent_cookie_id', 'wpconsent_service_url');

