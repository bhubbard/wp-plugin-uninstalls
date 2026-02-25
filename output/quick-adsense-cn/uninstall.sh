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
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Ads'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Rnd'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Nup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Con'"
wp option delete 'Img1Ads'
wp option delete 'Img1Rnd'
wp option delete 'Img1Nup'
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
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsCode%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsAlign%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'AdsMargin%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WidCode%'"

