#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fubaby_ebayLinkText'
wp option delete 'fubaby_ebayPluginVer'
wp option delete 'fubaby_ebayCampaignID'
wp option delete 'fubaby_ebayDefCustomID'
wp option delete 'fubaby_ebayEnableSmartLinks'
wp option delete 'fubaby_ebaySmartLinksCustomID'
wp option delete 'fubaby_ebayGlobalID'
wp option delete 'fubaby_ebayDefCategory'
wp option delete 'fubaby_ebayDefSeller'
wp option delete 'fubaby_ebayDefSellerType'
wp option delete 'fubaby_ebayDefSearchLocation'
wp option delete 'fubaby_ebayDefColumns'
wp option delete 'fubaby_ebayDefRows'
wp option delete 'fubaby_ebayDefSort'
wp option delete 'fubaby_ebayPicWidthItem'
wp option delete 'fubaby_ebayPicWidthList'
wp option delete 'fubaby_ebayPicWidthWidget'
wp option delete 'fubaby_ebayPicAspect'
wp option delete 'fubaby_ebayColourStyle'
wp option delete 'fubaby_ebayTitleMaxLines'
wp option delete 'fubaby_ebayShortDescMaxLines'
wp option delete 'fubaby_ebayDefArrangementItem'
wp option delete 'fubaby_ebayDefArrangementList'
wp option delete 'fubaby_ebayDefArrangementWidget'
wp option delete 'fubaby_ebayDefSlideshowStyle'
wp option delete 'fubaby_ebayDefDisplayFieldsItem'
wp option delete 'fubaby_ebayDefDisplayFieldsList'
wp option delete 'fubaby_ebayDefDisplayFieldsWidget'
wp option delete 'fubaby_ebayDefNumSlides'
wp option delete 'fubaby_ebayEmptySearchMsg'
wp option delete 'fubaby_ebayPriorityListingText'
wp option delete 'fubaby_ebayLoadMoreButtonText'
wp option delete 'fubaby_ebaySlideshowTimer'
wp option delete 'fubaby_ebayNewWindow'
wp option delete 'fubaby_ebayDeferredLoading'
wp option delete 'fubaby_ebaySubscriptionKey'
wp option delete 'fubaby_ebayDisplayFELLink'
wp option delete 'fubaby_ebayGeoTargetResults'
wp option delete 'fubaby_ebayShowEndedItems'
wp option delete 'fubaby_ebayAdDisclosurePlacement'
wp option delete 'fubaby_ebayAdDisclosureText'
wp option delete 'fu_ebayDismissedSubExpiry'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%GlobalID'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%PicAspect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ColourStyle'"
wp option delete 'fubaby_ebayDisableCatChooser'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fu_ebayDismissed%'"

# Delete Transients
wp transient delete 'fu_ebay_updated'
wp transient delete 'fu_ebay_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fu_ebayDismissed%' OR option_name LIKE '_site_transient_fu_ebayDismissed%'"
wp transient delete 'fu_ebayDismissedAdDisclosure'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebayuserid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebayuserid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebayuserid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebayuserid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%seller'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%seller'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%seller'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%seller'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%minprice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%minprice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%minprice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%minprice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%maxprice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%maxprice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%maxprice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%maxprice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%minbids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%minbids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%minbids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%minbids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%maxbids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%maxbids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%maxbids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%maxbids'"
