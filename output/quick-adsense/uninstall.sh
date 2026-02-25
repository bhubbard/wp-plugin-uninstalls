#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quick_adsense_adstxt_adsense_admin_notice_dismissed'
wp option delete 'quick_adsense_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stats'"
wp option delete 'quick_adsense_2_options'
wp option delete 'quick_adsense_2_options_bak'
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
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Ads'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Rnd'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Nup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Con'"
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

# Delete Transients
wp transient delete 'quick_adsense_adstxt_adsense_autocheck_content'

