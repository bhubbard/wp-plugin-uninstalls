<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AdsDisp');
delete_site_option('AdsDisp');
delete_option('BegnAds');
delete_site_option('BegnAds');
delete_option('BegnRnd');
delete_site_option('BegnRnd');
delete_option('MiddAds');
delete_site_option('MiddAds');
delete_option('MiddRnd');
delete_site_option('MiddRnd');
delete_option('EndiAds');
delete_site_option('EndiAds');
delete_option('EndiRnd');
delete_site_option('EndiRnd');
delete_option('MoreAds');
delete_site_option('MoreAds');
delete_option('MoreRnd');
delete_site_option('MoreRnd');
delete_option('LapaAds');
delete_site_option('LapaAds');
delete_option('LapaRnd');
delete_site_option('LapaRnd');
delete_option('qam_mobile1');
delete_site_option('qam_mobile1');
delete_option('qam_mobile2');
delete_site_option('qam_mobile2');
delete_option('qam_mobile3');
delete_site_option('qam_mobile3');
delete_option('qam_mobile4');
delete_site_option('qam_mobile4');
delete_option('qam_mobile5');
delete_site_option('qam_mobile5');
delete_option('qam_mobile60');
delete_site_option('qam_mobile60');
delete_option('qam_mobile61');
delete_site_option('qam_mobile61');
delete_option('qam_mobile62');
delete_site_option('qam_mobile62');
delete_option('qam_mobile7');
delete_site_option('qam_mobile7');
delete_option('qam_pcc1');
delete_site_option('qam_pcc1');
delete_option('qam_pcc2');
delete_site_option('qam_pcc2');
delete_option('qam_pcc3');
delete_site_option('qam_pcc3');
delete_option('qam_pcc4');
delete_site_option('qam_pcc4');
delete_option('qam_pcc5');
delete_site_option('qam_pcc5');
delete_option('qam_pcc60');
delete_site_option('qam_pcc60');
delete_option('qam_pcc61');
delete_site_option('qam_pcc61');
delete_option('qam_pcc62');
delete_site_option('qam_pcc62');
delete_option('qam_pcc7');
delete_site_option('qam_pcc7');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Ads' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Rnd' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Nup' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Con' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('Img1Ads');
delete_site_option('Img1Ads');
delete_option('Img1Rnd');
delete_site_option('Img1Rnd');
delete_option('Img1Nup');
delete_site_option('Img1Nup');
delete_option('Img1Con');
delete_site_option('Img1Con');
delete_option('AppPost');
delete_site_option('AppPost');
delete_option('AppPage');
delete_site_option('AppPage');
delete_option('AppHome');
delete_site_option('AppHome');
delete_option('AppCate');
delete_site_option('AppCate');
delete_option('AppArch');
delete_site_option('AppArch');
delete_option('AppTags');
delete_site_option('AppTags');
delete_option('AppMaxA');
delete_site_option('AppMaxA');
delete_option('AppSide');
delete_site_option('AppSide');
delete_option('AppLogg');
delete_site_option('AppLogg');
delete_option('QckTags');
delete_site_option('QckTags');
delete_option('QckRnds');
delete_site_option('QckRnds');
delete_option('QckOffs');
delete_site_option('QckOffs');
delete_option('QckOfPs');
delete_site_option('QckOfPs');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'AdsCode%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'AdsAlign%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'AdsMargin%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'WidCode%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

