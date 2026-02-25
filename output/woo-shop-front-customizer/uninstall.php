<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsfcshowHideBreadcrumb');
delete_site_option('wsfcshowHideBreadcrumb');
delete_option('wsfcshowHideTitle');
delete_site_option('wsfcshowHideTitle');
delete_option('wsfcshopTitle');
delete_site_option('wsfcshopTitle');
delete_option('wsfcshowHideSorting');
delete_site_option('wsfcshowHideSorting');
delete_option('wsfcshowHideProductImage');
delete_site_option('wsfcshowHideProductImage');
delete_option('wsfcshowHideSaleBadges');
delete_site_option('wsfcshowHideSaleBadges');
delete_option('wsfcshowProductPrice');
delete_site_option('wsfcshowProductPrice');
delete_option('wsfcshowProductTitle');
delete_site_option('wsfcshowProductTitle');
delete_option('wsfcshowProductRating');
delete_site_option('wsfcshowProductRating');
delete_option('wsfcshowProductCartButton');
delete_site_option('wsfcshowProductCartButton');
delete_option('wsfcshopProductNo');
delete_site_option('wsfcshopProductNo');
delete_option('wsfcProductSaleBadge');
delete_site_option('wsfcProductSaleBadge');
delete_option('wsfcProductGallery');
delete_site_option('wsfcProductGallery');
delete_option('wsfcProductTitle');
delete_site_option('wsfcProductTitle');
delete_option('wsfcProductRating');
delete_site_option('wsfcProductRating');
delete_option('wsfcProductPrice');
delete_site_option('wsfcProductPrice');
delete_option('wsfcProductExcerpt');
delete_site_option('wsfcProductExcerpt');
delete_option('wsfcProductCart');
delete_site_option('wsfcProductCart');
delete_option('wsfcProductMeta');
delete_site_option('wsfcProductMeta');
delete_option('wsfcProductsharing');
delete_site_option('wsfcProductsharing');
delete_option('wsfcProductTab');
delete_site_option('wsfcProductTab');
delete_option('wsfcProductUpsell');
delete_site_option('wsfcProductUpsell');
delete_option('wsfcProductRelated');
delete_site_option('wsfcProductRelated');

