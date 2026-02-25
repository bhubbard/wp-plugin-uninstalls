-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AdsDisp', 'BegnAds', 'BegnRnd', 'MiddAds', 'MiddRnd', 'EndiAds', 'EndiRnd', 'MoreAds', 'MoreRnd', 'Img1Ads', 'Img1Rnd', 'Img1Nup', 'AppPost', 'AppPage', 'AppHome', 'AppCate', 'AppArch', 'AppTags', 'AppMaxA', 'AppSide', 'AppLogg', 'QckTags', 'QckRnds', 'QckOffs');
DELETE FROM wp_options WHERE option_name LIKE '%Ads';
DELETE FROM wp_options WHERE option_name LIKE '%Rnd';
DELETE FROM wp_options WHERE option_name LIKE '%Nup';
DELETE FROM wp_options WHERE option_name LIKE '%Con';
DELETE FROM wp_options WHERE option_name LIKE 'AdsCode%';
DELETE FROM wp_options WHERE option_name LIKE 'AdsAlign%';
DELETE FROM wp_options WHERE option_name LIKE 'AdsMargin%';
DELETE FROM wp_options WHERE option_name LIKE 'WidCode%';

