-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcptbCurrentVersion', 'wcptbCurrentType', 'optSoldOut', 'optTagListHideEmpty', 'optTagListOrder', 'optTagListCount', 'optTagListSort', 'optTagListTitle', 'optCatListHideEmpty', 'optCatListOrder', 'optCatListCount', 'optMetasHide', 'optHideSKU', 'optHideTab_AddInfo', 'optHideTab_Review', 'optRelatedProducts', 'optAddCartTextShop', 'optAddCartTextProduct', 'optNewAddCart', 'optFreeShippingAmount', 'optFreeShippingButton', 'optDescTitle', 'optDescShort', 'optMetasShowCat', 'optMetasShowTag', 'optMetasDescTabVal', 'optMetasDescTitle', 'optTagHideEmpty', 'optTagOrder', 'optTagCount', 'optSubcatHideEmpty', 'optSubcatOrder', 'optSubcatCount', 'optDisableCopy');

