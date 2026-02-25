-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsfcshowHideBreadcrumb', 'wsfcshowHideTitle', 'wsfcshopTitle', 'wsfcshowHideSorting', 'wsfcshowHideProductImage', 'wsfcshowHideSaleBadges', 'wsfcshowProductPrice', 'wsfcshowProductTitle', 'wsfcshowProductRating', 'wsfcshowProductCartButton', 'wsfcshopProductNo', 'wsfcProductSaleBadge', 'wsfcProductGallery', 'wsfcProductTitle', 'wsfcProductRating', 'wsfcProductPrice', 'wsfcProductExcerpt', 'wsfcProductCart', 'wsfcProductMeta', 'wsfcProductsharing', 'wsfcProductTab', 'wsfcProductUpsell', 'wsfcProductRelated');

