-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick_adsense_adstxt_adsense_admin_notice_dismissed', 'quick_adsense_settings', 'quick_adsense_2_options', 'quick_adsense_2_options_bak', 'AdsDisp', 'BegnAds', 'BegnRnd', 'MiddAds', 'MiddRnd', 'EndiAds', 'EndiRnd', 'MoreAds', 'MoreRnd', 'LapaAds', 'LapaRnd', 'AppPost', 'AppPage', 'AppHome', 'AppCate', 'AppArch', 'AppTags', 'AppMaxA', 'AppSide', 'AppLogg', 'QckTags', 'QckRnds', 'QckOffs', 'QckOfPs', 'quick_adsense_adstxt_adsense_autocheck_content');
DELETE FROM wp_options WHERE option_name LIKE '%_stats';
DELETE FROM wp_options WHERE option_name LIKE '%Ads';
DELETE FROM wp_options WHERE option_name LIKE '%Rnd';
DELETE FROM wp_options WHERE option_name LIKE '%Nup';
DELETE FROM wp_options WHERE option_name LIKE '%Con';
DELETE FROM wp_options WHERE option_name LIKE 'AdsCode%';
DELETE FROM wp_options WHERE option_name LIKE 'AdsAlign%';
DELETE FROM wp_options WHERE option_name LIKE 'AdsMargin%';
DELETE FROM wp_options WHERE option_name LIKE 'WidCode%';

