-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdt_cookie_demo_status', 'mdt_cookie_banner_guid', 'mdt_cookie_banner_status', 'mdt_cookie_live_url', 'mdt_wp_consent_api_enabled', 'mdt_google_consent_enabled', 'mdt_google_tags_before_consent', 'mdt_cookie_demo_url', 'mcc_banner_config', 'mdt_cookie_baseURL', 'mdt_cookie_demoSettingFileName', 'mdt_cookie_bannerFolder');

