<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fuEtsyPluginVer');
delete_site_option('fuEtsyPluginVer');
delete_option('fuEtsyDefCategory');
delete_site_option('fuEtsyDefCategory');
delete_option('fuEtsyDefSeller');
delete_site_option('fuEtsyDefSeller');
delete_option('fuEtsyDefSearchLocation');
delete_site_option('fuEtsyDefSearchLocation');
delete_option('fuEtsyDefColumns');
delete_site_option('fuEtsyDefColumns');
delete_option('fuEtsyDefRows');
delete_site_option('fuEtsyDefRows');
delete_option('fuEtsyDefSort');
delete_site_option('fuEtsyDefSort');
delete_option('fuEtsyPicWidthItem');
delete_site_option('fuEtsyPicWidthItem');
delete_option('fuEtsyPicWidthList');
delete_site_option('fuEtsyPicWidthList');
delete_option('fuEtsyPicAspect');
delete_site_option('fuEtsyPicAspect');
delete_option('fuEtsyColourStyle');
delete_site_option('fuEtsyColourStyle');
delete_option('fuEtsyTitleMaxLines');
delete_site_option('fuEtsyTitleMaxLines');
delete_option('fuEtsyShortDescMaxLines');
delete_site_option('fuEtsyShortDescMaxLines');
delete_option('fuEtsyDefArrangementItem');
delete_site_option('fuEtsyDefArrangementItem');
delete_option('fuEtsyDefArrangementList');
delete_site_option('fuEtsyDefArrangementList');
delete_option('fuEtsyDefSlideshowStyle');
delete_site_option('fuEtsyDefSlideshowStyle');
delete_option('fuEtsyDefDisplayFieldsItem');
delete_site_option('fuEtsyDefDisplayFieldsItem');
delete_option('fuEtsyDefDisplayFieldsList');
delete_site_option('fuEtsyDefDisplayFieldsList');
delete_option('fuEtsyDefNumSlides');
delete_site_option('fuEtsyDefNumSlides');
delete_option('fuEtsyEmptySearchMsg');
delete_site_option('fuEtsyEmptySearchMsg');
delete_option('fuEtsyPriorityListingText');
delete_site_option('fuEtsyPriorityListingText');
delete_option('fuEtsyLinkText');
delete_site_option('fuEtsyLinkText');
delete_option('fuEtsyLoadMoreButtonText');
delete_site_option('fuEtsyLoadMoreButtonText');
delete_option('fuEtsySlideshowTimer');
delete_site_option('fuEtsySlideshowTimer');
delete_option('fuEtsyNewWindow');
delete_site_option('fuEtsyNewWindow');
delete_option('fuEtsyDeferredLoading');
delete_site_option('fuEtsyDeferredLoading');
delete_option('fuEtsySubscriptionKey');
delete_site_option('fuEtsySubscriptionKey');
delete_option('fuEtsyDisplayFELLink');
delete_site_option('fuEtsyDisplayFELLink');
delete_option('fuEtsyGeoTargetResults');
delete_site_option('fuEtsyGeoTargetResults');
delete_option('fuEtsyAdvertiserID');
delete_site_option('fuEtsyAdvertiserID');
delete_option('fuEtsyAffiliateID');
delete_site_option('fuEtsyAffiliateID');
delete_option('fuEtsyAffiliateRefID');
delete_site_option('fuEtsyAffiliateRefID');
delete_option('fuEtsyAdDisclosurePlacement');
delete_site_option('fuEtsyAdDisclosurePlacement');
delete_option('fuEtsyAdDisclosureText');
delete_site_option('fuEtsyAdDisclosureText');
delete_option('fuEystDefArrangementItem');
delete_site_option('fuEystDefArrangementItem');
delete_option('fu_EtsyDismissedSubExpiry');
delete_site_option('fu_EtsyDismissedSubExpiry');
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
delete_option('fuEtsyDefCustomID');
delete_site_option('fuEtsyDefCustomID');
delete_option('fuEtsyDisableCatChooser');
delete_site_option('fuEtsyDisableCatChooser');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fu_etsyDismissed%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('fu_etsy_updated');
delete_site_transient('fu_etsy_updated');
delete_transient('fu_etsy_activated');
delete_site_transient('fu_etsy_activated');

