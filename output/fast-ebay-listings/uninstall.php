<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fubaby_ebayLinkText');
delete_site_option('fubaby_ebayLinkText');
delete_option('fubaby_ebayPluginVer');
delete_site_option('fubaby_ebayPluginVer');
delete_option('fubaby_ebayCampaignID');
delete_site_option('fubaby_ebayCampaignID');
delete_option('fubaby_ebayDefCustomID');
delete_site_option('fubaby_ebayDefCustomID');
delete_option('fubaby_ebayEnableSmartLinks');
delete_site_option('fubaby_ebayEnableSmartLinks');
delete_option('fubaby_ebaySmartLinksCustomID');
delete_site_option('fubaby_ebaySmartLinksCustomID');
delete_option('fubaby_ebayGlobalID');
delete_site_option('fubaby_ebayGlobalID');
delete_option('fubaby_ebayDefCategory');
delete_site_option('fubaby_ebayDefCategory');
delete_option('fubaby_ebayDefSeller');
delete_site_option('fubaby_ebayDefSeller');
delete_option('fubaby_ebayDefSellerType');
delete_site_option('fubaby_ebayDefSellerType');
delete_option('fubaby_ebayDefSearchLocation');
delete_site_option('fubaby_ebayDefSearchLocation');
delete_option('fubaby_ebayDefColumns');
delete_site_option('fubaby_ebayDefColumns');
delete_option('fubaby_ebayDefRows');
delete_site_option('fubaby_ebayDefRows');
delete_option('fubaby_ebayDefSort');
delete_site_option('fubaby_ebayDefSort');
delete_option('fubaby_ebayPicWidthItem');
delete_site_option('fubaby_ebayPicWidthItem');
delete_option('fubaby_ebayPicWidthList');
delete_site_option('fubaby_ebayPicWidthList');
delete_option('fubaby_ebayPicWidthWidget');
delete_site_option('fubaby_ebayPicWidthWidget');
delete_option('fubaby_ebayPicAspect');
delete_site_option('fubaby_ebayPicAspect');
delete_option('fubaby_ebayColourStyle');
delete_site_option('fubaby_ebayColourStyle');
delete_option('fubaby_ebayTitleMaxLines');
delete_site_option('fubaby_ebayTitleMaxLines');
delete_option('fubaby_ebayShortDescMaxLines');
delete_site_option('fubaby_ebayShortDescMaxLines');
delete_option('fubaby_ebayDefArrangementItem');
delete_site_option('fubaby_ebayDefArrangementItem');
delete_option('fubaby_ebayDefArrangementList');
delete_site_option('fubaby_ebayDefArrangementList');
delete_option('fubaby_ebayDefArrangementWidget');
delete_site_option('fubaby_ebayDefArrangementWidget');
delete_option('fubaby_ebayDefSlideshowStyle');
delete_site_option('fubaby_ebayDefSlideshowStyle');
delete_option('fubaby_ebayDefDisplayFieldsItem');
delete_site_option('fubaby_ebayDefDisplayFieldsItem');
delete_option('fubaby_ebayDefDisplayFieldsList');
delete_site_option('fubaby_ebayDefDisplayFieldsList');
delete_option('fubaby_ebayDefDisplayFieldsWidget');
delete_site_option('fubaby_ebayDefDisplayFieldsWidget');
delete_option('fubaby_ebayDefNumSlides');
delete_site_option('fubaby_ebayDefNumSlides');
delete_option('fubaby_ebayEmptySearchMsg');
delete_site_option('fubaby_ebayEmptySearchMsg');
delete_option('fubaby_ebayPriorityListingText');
delete_site_option('fubaby_ebayPriorityListingText');
delete_option('fubaby_ebayLoadMoreButtonText');
delete_site_option('fubaby_ebayLoadMoreButtonText');
delete_option('fubaby_ebaySlideshowTimer');
delete_site_option('fubaby_ebaySlideshowTimer');
delete_option('fubaby_ebayNewWindow');
delete_site_option('fubaby_ebayNewWindow');
delete_option('fubaby_ebayDeferredLoading');
delete_site_option('fubaby_ebayDeferredLoading');
delete_option('fubaby_ebaySubscriptionKey');
delete_site_option('fubaby_ebaySubscriptionKey');
delete_option('fubaby_ebayDisplayFELLink');
delete_site_option('fubaby_ebayDisplayFELLink');
delete_option('fubaby_ebayGeoTargetResults');
delete_site_option('fubaby_ebayGeoTargetResults');
delete_option('fubaby_ebayShowEndedItems');
delete_site_option('fubaby_ebayShowEndedItems');
delete_option('fubaby_ebayAdDisclosurePlacement');
delete_site_option('fubaby_ebayAdDisclosurePlacement');
delete_option('fubaby_ebayAdDisclosureText');
delete_site_option('fubaby_ebayAdDisclosureText');
delete_option('fu_ebayDismissedSubExpiry');
delete_site_option('fu_ebayDismissedSubExpiry');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%GlobalID' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%PicAspect' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%ColourStyle' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fubaby_ebayDisableCatChooser');
delete_site_option('fubaby_ebayDisableCatChooser');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fu_ebayDismissed%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('fu_ebay_updated');
delete_site_transient('fu_ebay_updated');
delete_transient('fu_ebay_activated');
delete_site_transient('fu_ebay_activated');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fu_ebayDismissed%', '_site_transient_fu_ebayDismissed%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fu_ebayDismissedAdDisclosure');
delete_site_transient('fu_ebayDismissedAdDisclosure');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ebayuserid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ebayuserid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ebayuserid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ebayuserid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%seller' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%seller' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%seller' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%seller' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%minprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%minprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%minprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%minprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%maxprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%maxprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%maxprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%maxprice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%minbids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%minbids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%minbids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%minbids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%maxbids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%maxbids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%maxbids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%maxbids' ) );

