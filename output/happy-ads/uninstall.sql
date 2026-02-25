-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('happy_ads_settings', 'rewrite_rules', 'active_sitewide_plugins', 'happy_ads_version', 'happy_ads_install_date', 'happy_ads_api_connected');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('happy_ads_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('happy_ads_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('happy_ads_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('happy_ads_dismissed_notices');

