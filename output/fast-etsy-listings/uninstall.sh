#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fuEtsyPluginVer'
wp option delete 'fuEtsyDefCategory'
wp option delete 'fuEtsyDefSeller'
wp option delete 'fuEtsyDefSearchLocation'
wp option delete 'fuEtsyDefColumns'
wp option delete 'fuEtsyDefRows'
wp option delete 'fuEtsyDefSort'
wp option delete 'fuEtsyPicWidthItem'
wp option delete 'fuEtsyPicWidthList'
wp option delete 'fuEtsyPicAspect'
wp option delete 'fuEtsyColourStyle'
wp option delete 'fuEtsyTitleMaxLines'
wp option delete 'fuEtsyShortDescMaxLines'
wp option delete 'fuEtsyDefArrangementItem'
wp option delete 'fuEtsyDefArrangementList'
wp option delete 'fuEtsyDefSlideshowStyle'
wp option delete 'fuEtsyDefDisplayFieldsItem'
wp option delete 'fuEtsyDefDisplayFieldsList'
wp option delete 'fuEtsyDefNumSlides'
wp option delete 'fuEtsyEmptySearchMsg'
wp option delete 'fuEtsyPriorityListingText'
wp option delete 'fuEtsyLinkText'
wp option delete 'fuEtsyLoadMoreButtonText'
wp option delete 'fuEtsySlideshowTimer'
wp option delete 'fuEtsyNewWindow'
wp option delete 'fuEtsyDeferredLoading'
wp option delete 'fuEtsySubscriptionKey'
wp option delete 'fuEtsyDisplayFELLink'
wp option delete 'fuEtsyGeoTargetResults'
wp option delete 'fuEtsyAdvertiserID'
wp option delete 'fuEtsyAffiliateID'
wp option delete 'fuEtsyAffiliateRefID'
wp option delete 'fuEtsyAdDisclosurePlacement'
wp option delete 'fuEtsyAdDisclosureText'
wp option delete 'fuEystDefArrangementItem'
wp option delete 'fu_EtsyDismissedSubExpiry'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%GlobalID'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%PicAspect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ColourStyle'"
wp option delete 'fuEtsyDefCustomID'
wp option delete 'fuEtsyDisableCatChooser'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fu_etsyDismissed%'"

# Delete Transients
wp transient delete 'fu_etsy_updated'
wp transient delete 'fu_etsy_activated'

