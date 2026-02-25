-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashboard_widget_options', 'vikappointments_software_version', 'vikappointments_onactivate', 'vikappointments_breaking_changes', 'vikappointments_screen_failed_attempts', 'vikappointments_list_limit', 'vikappointments_changelog', 'vikappointments_license_key', 'vikappointments_license_expdate', 'vikappointments_license_hash');
DELETE FROM wp_options WHERE option_name LIKE 'vikappointments_screen_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vikappointments_rss_urls', 'vikappointments_rss_display_dashboard', 'session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('vikappointments_rss_urls', 'vikappointments_rss_display_dashboard', 'session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('vikappointments_rss_urls', 'vikappointments_rss_display_dashboard', 'session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vikappointments_rss_urls', 'vikappointments_rss_display_dashboard', 'session_tokens');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin';

