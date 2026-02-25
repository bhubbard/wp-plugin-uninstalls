<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('family_tree_category_key');
delete_site_option('family_tree_category_key');
delete_option('family_tree_link');
delete_site_option('family_tree_link');
delete_option('show_biodata_on_posts_page');
delete_site_option('show_biodata_on_posts_page');
delete_option('family_tree_toolbar_blogpage');
delete_site_option('family_tree_toolbar_blogpage');
delete_option('family_tree_toolbar_treenav');
delete_site_option('family_tree_toolbar_treenav');
delete_option('showcreditlink');
delete_site_option('showcreditlink');
delete_option('bOneNamePerLine');
delete_site_option('bOneNamePerLine');
delete_option('bOnlyFirstName');
delete_site_option('bOnlyFirstName');
delete_option('bBirthAndDeathDates');
delete_site_option('bBirthAndDeathDates');
delete_option('bConcealLivingDates');
delete_site_option('bConcealLivingDates');
delete_option('bShowSpouse');
delete_site_option('bShowSpouse');
delete_option('bShowOneSpouse');
delete_site_option('bShowOneSpouse');
delete_option('bVerticalSpouses');
delete_site_option('bVerticalSpouses');
delete_option('bMaidenName');
delete_site_option('bMaidenName');
delete_option('bShowGender');
delete_site_option('bShowGender');
delete_option('bDiagonalConnections');
delete_site_option('bDiagonalConnections');
delete_option('bRefocusOnClick');
delete_site_option('bRefocusOnClick');
delete_option('bShowToolbar');
delete_site_option('bShowToolbar');
delete_option('canvasbgcol');
delete_site_option('canvasbgcol');
delete_option('nodeoutlinecol');
delete_site_option('nodeoutlinecol');
delete_option('nodefillcol');
delete_site_option('nodefillcol');
delete_option('nodefillopacity');
delete_site_option('nodefillopacity');
delete_option('nodetextcolour');
delete_site_option('nodetextcolour');
delete_option('nodecornerradius');
delete_site_option('nodecornerradius');
delete_option('nodeminwidth');
delete_site_option('nodeminwidth');
delete_option('generationheight');
delete_site_option('generationheight');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gender' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gender' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gender' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gender' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'father' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'father' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'father' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'father' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mother' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mother' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mother' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mother' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'spouse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'spouse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'spouse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'spouse' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'born' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'born' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'born' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'born' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'died' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'died' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'died' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'died' ) );

