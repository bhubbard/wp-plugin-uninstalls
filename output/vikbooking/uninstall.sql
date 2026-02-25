-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashboard_widget_options', 'groupsysmessages', 'vikbooking_software_version', 'vikbooking_onactivate', 'vikbooking_breaking_changes', 'vikbooking_screen_failed_attempts', 'vikbooking_list_limit', 'vikbooking_changelog', 'vikbooking_license_key', 'vikbooking_license_expdate', 'vikbooking_hide_vcmad', 'vikbooking_license_hash');
DELETE FROM wp_options WHERE option_name LIKE 'vikbooking_tmp_%';
DELETE FROM wp_options WHERE option_name LIKE 'vikbooking_screen_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vikbooking_rss_urls', 'vikbooking_rss_display_dashboard');
DELETE FROM wp_usermeta WHERE meta_key IN ('vikbooking_rss_urls', 'vikbooking_rss_display_dashboard');
DELETE FROM wp_termmeta WHERE meta_key IN ('vikbooking_rss_urls', 'vikbooking_rss_display_dashboard');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vikbooking_rss_urls', 'vikbooking_rss_display_dashboard');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin';

