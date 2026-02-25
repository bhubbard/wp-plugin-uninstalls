-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reportaj_ads_publisher_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reportaj_ads_code', 'reportaj_ads_sent_api');
DELETE FROM wp_usermeta WHERE meta_key IN ('reportaj_ads_code', 'reportaj_ads_sent_api');
DELETE FROM wp_termmeta WHERE meta_key IN ('reportaj_ads_code', 'reportaj_ads_sent_api');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reportaj_ads_code', 'reportaj_ads_sent_api');

