-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awesome_ads_chitika_json', 'awesome_ads_users_chitika', 'awesome_ads_google_json', 'awesome_ads_users_google', 'awesome-ads-networks');
DELETE FROM wp_options WHERE option_name LIKE 'awesome_ads_users_%';
DELETE FROM wp_options WHERE option_name LIKE '%_json';

