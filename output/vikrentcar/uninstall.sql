-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashboard_widget_options', 'groupsysmessages', 'vikrentcar_software_version', 'vikrentcar_onactivate', 'vikrentcar_breaking_changes', 'vikrentcar_screen_failed_attempts', 'vikrentcar_list_limit', 'vikrentcar_changelog', 'vikrentcar_license_key', 'vikrentcar_license_expdate', 'vikrentcar_license_hash');
DELETE FROM wp_options WHERE option_name LIKE 'vikrentcar_tmp_%';
DELETE FROM wp_options WHERE option_name LIKE 'vikrentcar_screen_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin';

