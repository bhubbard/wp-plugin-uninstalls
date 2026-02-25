-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fuEtsyPluginVer', 'fuEtsyDefCategory', 'fuEtsyDefSeller', 'fuEtsyDefSearchLocation', 'fuEtsyDefColumns', 'fuEtsyDefRows', 'fuEtsyDefSort', 'fuEtsyPicWidthItem', 'fuEtsyPicWidthList', 'fuEtsyPicAspect', 'fuEtsyColourStyle', 'fuEtsyTitleMaxLines', 'fuEtsyShortDescMaxLines', 'fuEtsyDefArrangementItem', 'fuEtsyDefArrangementList', 'fuEtsyDefSlideshowStyle', 'fuEtsyDefDisplayFieldsItem', 'fuEtsyDefDisplayFieldsList', 'fuEtsyDefNumSlides', 'fuEtsyEmptySearchMsg', 'fuEtsyPriorityListingText', 'fuEtsyLinkText', 'fuEtsyLoadMoreButtonText', 'fuEtsySlideshowTimer', 'fuEtsyNewWindow', 'fuEtsyDeferredLoading', 'fuEtsySubscriptionKey', 'fuEtsyDisplayFELLink', 'fuEtsyGeoTargetResults', 'fuEtsyAdvertiserID', 'fuEtsyAffiliateID', 'fuEtsyAffiliateRefID', 'fuEtsyAdDisclosurePlacement', 'fuEtsyAdDisclosureText', 'fuEystDefArrangementItem', 'fu_EtsyDismissedSubExpiry', 'fuEtsyDefCustomID', 'fuEtsyDisableCatChooser', 'fu_etsy_updated', 'fu_etsy_activated');
DELETE FROM wp_options WHERE option_name LIKE '%GlobalID';
DELETE FROM wp_options WHERE option_name LIKE '%PicAspect';
DELETE FROM wp_options WHERE option_name LIKE '%ColourStyle';
DELETE FROM wp_options WHERE option_name LIKE 'fu_etsyDismissed%';

