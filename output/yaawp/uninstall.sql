-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yaawp_secret_access_key', 'yaawp_access_key_id', 'yaawp_associate_id', 'yaawp_db_version', 'yaawp_cron_check', 'yaawp_news');
DELETE FROM wp_options WHERE option_name LIKE 'yaawp_taxonomy_image%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('AmountSavedFormattedPrice', 'ASIN', 'LargeImageUrl', 'LowestOfferFormattedPrice', 'LowestNewOfferFormattedPrice', 'DetailPageURL', 'ImageSetTiny0', 'ImageSetLarge0', 'ImageSetTiny1', 'ImageSetLarge1', 'ImageSetTiny2', 'ImageSetLarge2', 'CustomerReviewsIFrameURL', 'Availability', 'LastCheck', 'ListPriceFormatted', 'AmazonDescription', 'yaawp_template', 'SmallImageUrl', 'LowestUsedOfferFormattedPrice', 'Binding');
DELETE FROM wp_usermeta WHERE meta_key IN ('AmountSavedFormattedPrice', 'ASIN', 'LargeImageUrl', 'LowestOfferFormattedPrice', 'LowestNewOfferFormattedPrice', 'DetailPageURL', 'ImageSetTiny0', 'ImageSetLarge0', 'ImageSetTiny1', 'ImageSetLarge1', 'ImageSetTiny2', 'ImageSetLarge2', 'CustomerReviewsIFrameURL', 'Availability', 'LastCheck', 'ListPriceFormatted', 'AmazonDescription', 'yaawp_template', 'SmallImageUrl', 'LowestUsedOfferFormattedPrice', 'Binding');
DELETE FROM wp_termmeta WHERE meta_key IN ('AmountSavedFormattedPrice', 'ASIN', 'LargeImageUrl', 'LowestOfferFormattedPrice', 'LowestNewOfferFormattedPrice', 'DetailPageURL', 'ImageSetTiny0', 'ImageSetLarge0', 'ImageSetTiny1', 'ImageSetLarge1', 'ImageSetTiny2', 'ImageSetLarge2', 'CustomerReviewsIFrameURL', 'Availability', 'LastCheck', 'ListPriceFormatted', 'AmazonDescription', 'yaawp_template', 'SmallImageUrl', 'LowestUsedOfferFormattedPrice', 'Binding');
DELETE FROM wp_commentmeta WHERE meta_key IN ('AmountSavedFormattedPrice', 'ASIN', 'LargeImageUrl', 'LowestOfferFormattedPrice', 'LowestNewOfferFormattedPrice', 'DetailPageURL', 'ImageSetTiny0', 'ImageSetLarge0', 'ImageSetTiny1', 'ImageSetLarge1', 'ImageSetTiny2', 'ImageSetLarge2', 'CustomerReviewsIFrameURL', 'Availability', 'LastCheck', 'ListPriceFormatted', 'AmazonDescription', 'yaawp_template', 'SmallImageUrl', 'LowestUsedOfferFormattedPrice', 'Binding');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ImageSetTiny%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ImageSetTiny%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ImageSetTiny%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ImageSetTiny%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ImageSetLarge%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ImageSetLarge%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ImageSetLarge%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ImageSetLarge%';

