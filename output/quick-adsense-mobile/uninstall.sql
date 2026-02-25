-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AdsDisp', 'BegnAds', 'BegnRnd', 'MiddAds', 'MiddRnd', 'EndiAds', 'EndiRnd', 'MoreAds', 'MoreRnd', 'LapaAds', 'LapaRnd', 'qam_mobile1', 'qam_mobile2', 'qam_mobile3', 'qam_mobile4', 'qam_mobile5', 'qam_mobile60', 'qam_mobile61', 'qam_mobile62', 'qam_mobile7', 'qam_pcc1', 'qam_pcc2', 'qam_pcc3', 'qam_pcc4', 'qam_pcc5', 'qam_pcc60', 'qam_pcc61', 'qam_pcc62', 'qam_pcc7', 'Img1Ads', 'Img1Rnd', 'Img1Nup', 'Img1Con', 'AppPost', 'AppPage', 'AppHome', 'AppCate', 'AppArch', 'AppTags', 'AppMaxA', 'AppSide', 'AppLogg', 'QckTags', 'QckRnds', 'QckOffs', 'QckOfPs');
DELETE FROM wp_options WHERE option_name LIKE '%Ads';
DELETE FROM wp_options WHERE option_name LIKE '%Rnd';
DELETE FROM wp_options WHERE option_name LIKE '%Nup';
DELETE FROM wp_options WHERE option_name LIKE '%Con';
DELETE FROM wp_options WHERE option_name LIKE 'AdsCode%';
DELETE FROM wp_options WHERE option_name LIKE 'AdsAlign%';
DELETE FROM wp_options WHERE option_name LIKE 'AdsMargin%';
DELETE FROM wp_options WHERE option_name LIKE 'WidCode%';

