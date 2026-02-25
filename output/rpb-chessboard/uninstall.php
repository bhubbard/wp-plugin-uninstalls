<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rpbchessboard_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rpbchessboard_diagramAlignment');
delete_site_option('rpbchessboard_diagramAlignment');
delete_option('rpbchessboard_navigationBoard');
delete_site_option('rpbchessboard_navigationBoard');
delete_option('rpbchessboard_moveArrowColor');
delete_site_option('rpbchessboard_moveArrowColor');
delete_option('rpbchessboard_pieceSymbols');
delete_site_option('rpbchessboard_pieceSymbols');
delete_option('rpbchessboard_smallScreenModes');
delete_site_option('rpbchessboard_smallScreenModes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%s' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rpbchessboard_fenCompatibilityMode');
delete_site_option('rpbchessboard_fenCompatibilityMode');
delete_option('rpbchessboard_pgnCompatibilityMode');
delete_site_option('rpbchessboard_pgnCompatibilityMode');
delete_option('rpbchessboard_lazyLoadingForCSSAndJS');
delete_site_option('rpbchessboard_lazyLoadingForCSSAndJS');
delete_option('rpbchessboard_custom_colorsets');
delete_site_option('rpbchessboard_custom_colorsets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rpbchessboard_custom_colorset_label_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rpbchessboard_custom_colorset_attributes_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rpbchessboard_custom_piecesets');
delete_site_option('rpbchessboard_custom_piecesets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rpbchessboard_custom_pieceset_label_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rpbchessboard_custom_pieceset_attributes_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rpbchessboard_squareSize');
delete_site_option('rpbchessboard_squareSize');
delete_option('rpbchessboard_showCoordinates');
delete_site_option('rpbchessboard_showCoordinates');
delete_option('rpbchessboard_colorset');
delete_site_option('rpbchessboard_colorset');
delete_option('rpbchessboard_pieceset');
delete_site_option('rpbchessboard_pieceset');
delete_option('rpbchessboard_showPlayButton');
delete_site_option('rpbchessboard_showPlayButton');
delete_option('rpbchessboard_showFlipButton');
delete_site_option('rpbchessboard_showFlipButton');
delete_option('rpbchessboard_showDownloadButton');
delete_site_option('rpbchessboard_showDownloadButton');
delete_option('rpbchessboard_animated');
delete_site_option('rpbchessboard_animated');
delete_option('rpbchessboard_animationSpeed');
delete_site_option('rpbchessboard_animationSpeed');
delete_option('rpbchessboard_showMoveArrow');
delete_site_option('rpbchessboard_showMoveArrow');
delete_option('rpbchessboard_playSound');
delete_site_option('rpbchessboard_playSound');
delete_option('rpbchessboard_smallScreenCompatibility');
delete_site_option('rpbchessboard_smallScreenCompatibility');

