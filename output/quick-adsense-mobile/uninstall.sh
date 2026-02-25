#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AdsDisp'
wp option delete 'BegnAds'
wp option delete 'BegnRnd'
wp option delete 'MiddAds'
wp option delete 'MiddRnd'
wp option delete 'EndiAds'
wp option delete 'EndiRnd'
wp option delete 'MoreAds'
wp option delete 'MoreRnd'
wp option delete 'LapaAds'
wp option delete 'LapaRnd'
wp option delete 'qam_mobile1'
wp option delete 'qam_mobile2'
wp option delete 'qam_mobile3'
wp option delete 'qam_mobile4'
wp option delete 'qam_mobile5'
wp option delete 'qam_mobile60'
wp option delete 'qam_mobile61'
wp option delete 'qam_mobile62'
wp option delete 'qam_mobile7'
wp option delete 'qam_pcc1'
wp option delete 'qam_pcc2'
wp option delete 'qam_pcc3'
wp option delete 'qam_pcc4'
wp option delete 'qam_pcc5'
wp option delete 'qam_pcc60'
wp option delete 'qam_pcc61'
wp option delete 'qam_pcc62'
wp option delete 'qam_pcc7'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Ads'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Rnd'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Nup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Con'"
wp option delete 'Img1Ads'
wp option delete 'Img1Rnd'
wp option delete 'Img1Nup'
wp option delete 'Img1Con'
wp option delete 'AppPost'
wp option delete 'AppPage'
wp option delete 'AppHome'
wp option delete 'AppCate'
wp option delete 'AppArch'
wp option delete 'AppTags'
wp option delete 'AppMaxA'
wp option delete 'AppSide'
wp option delete 'AppLogg'
wp option delete 'QckTags'
wp option delete 'QckRnds'
wp option delete 'QckOffs'
wp option delete 'QckOfPs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsCode%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsAlign%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsMargin%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WidCode%'"

