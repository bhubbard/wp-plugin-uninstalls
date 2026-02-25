-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashboard_widget_options', 'groupsysmessages', 'vikrentitems_software_version', 'vikrentitems_onactivate', 'vikrentitems_screen_failed_attempts', 'vikrentitems_list_limit', 'vikrentitems_changelog', 'vikrentitems_license_key', 'vikrentitems_license_expdate', 'vikrentitems_license_hash', 'vri_delivery_modal_tmpl_component');
DELETE FROM wp_options WHERE option_name LIKE 'vikrentitems_tmp_%';
DELETE FROM wp_options WHERE option_name LIKE 'vikrentitems_screen_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_feeds';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_rss_optin';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_rss_optin';

