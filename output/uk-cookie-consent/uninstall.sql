-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('termly_website', 'termly_api_key', 'termly_business_info', 'termly_business_settings', 'termly_banner', 'termly_banner_settings', 'termly_cookie_preference_button', 'termly_site_scan', 'termly_display_banner', 'termly_display_auto_blocker', 'termly_display_custom_map', 'termly_custom_blocking_map', 'termly-feature-set', 'termly-site-scan-results');

