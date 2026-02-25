-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashboard_widget_options', 'vikrestaurants_software_version', 'vikrestaurants_onactivate', 'vikrestaurants_breaking_changes', 'vikrestaurants_screen_failed_attempts', 'vikrestaurants_list_limit', 'vikrestaurants_changelog', 'vikrestaurants_license_key', 'vikrestaurants_license_expdate', 'vikrestaurants_license_hash');
DELETE FROM wp_options WHERE option_name LIKE 'vikrestaurants_screen_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vikrestaurants_rss_urls', 'vikrestaurants_rss_display_dashboard');
DELETE FROM wp_usermeta WHERE meta_key IN ('vikrestaurants_rss_urls', 'vikrestaurants_rss_display_dashboard');
DELETE FROM wp_termmeta WHERE meta_key IN ('vikrestaurants_rss_urls', 'vikrestaurants_rss_display_dashboard');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vikrestaurants_rss_urls', 'vikrestaurants_rss_display_dashboard');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin';

