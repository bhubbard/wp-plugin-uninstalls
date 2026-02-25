-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fubaby_ebayLinkText', 'fubaby_ebayPluginVer', 'fubaby_ebayCampaignID', 'fubaby_ebayDefCustomID', 'fubaby_ebayEnableSmartLinks', 'fubaby_ebaySmartLinksCustomID', 'fubaby_ebayGlobalID', 'fubaby_ebayDefCategory', 'fubaby_ebayDefSeller', 'fubaby_ebayDefSellerType', 'fubaby_ebayDefSearchLocation', 'fubaby_ebayDefColumns', 'fubaby_ebayDefRows', 'fubaby_ebayDefSort', 'fubaby_ebayPicWidthItem', 'fubaby_ebayPicWidthList', 'fubaby_ebayPicWidthWidget', 'fubaby_ebayPicAspect', 'fubaby_ebayColourStyle', 'fubaby_ebayTitleMaxLines', 'fubaby_ebayShortDescMaxLines', 'fubaby_ebayDefArrangementItem', 'fubaby_ebayDefArrangementList', 'fubaby_ebayDefArrangementWidget', 'fubaby_ebayDefSlideshowStyle', 'fubaby_ebayDefDisplayFieldsItem', 'fubaby_ebayDefDisplayFieldsList', 'fubaby_ebayDefDisplayFieldsWidget', 'fubaby_ebayDefNumSlides', 'fubaby_ebayEmptySearchMsg', 'fubaby_ebayPriorityListingText', 'fubaby_ebayLoadMoreButtonText', 'fubaby_ebaySlideshowTimer', 'fubaby_ebayNewWindow', 'fubaby_ebayDeferredLoading', 'fubaby_ebaySubscriptionKey', 'fubaby_ebayDisplayFELLink', 'fubaby_ebayGeoTargetResults', 'fubaby_ebayShowEndedItems', 'fubaby_ebayAdDisclosurePlacement', 'fubaby_ebayAdDisclosureText', 'fu_ebayDismissedSubExpiry', 'fubaby_ebayDisableCatChooser', 'fu_ebay_updated', 'fu_ebay_activated', 'fu_ebayDismissedAdDisclosure');
DELETE FROM wp_options WHERE option_name LIKE '%GlobalID';
DELETE FROM wp_options WHERE option_name LIKE '%PicAspect';
DELETE FROM wp_options WHERE option_name LIKE '%ColourStyle';
DELETE FROM wp_options WHERE option_name LIKE 'fu_ebayDismissed%';
DELETE FROM wp_options WHERE option_name LIKE 'fu_ebayDismissed%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ebayuserid');
DELETE FROM wp_usermeta WHERE meta_key IN ('ebayuserid');
DELETE FROM wp_termmeta WHERE meta_key IN ('ebayuserid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ebayuserid');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%category';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%category';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%category';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%category';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%seller';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%seller';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%seller';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%seller';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%minprice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%minprice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%minprice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%minprice';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%maxprice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%maxprice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%maxprice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%maxprice';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%minbids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%minbids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%minbids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%minbids';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%maxbids';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%maxbids';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%maxbids';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%maxbids';

