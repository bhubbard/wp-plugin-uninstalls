<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quick_adsense_adstxt_adsense_admin_notice_dismissed');
delete_site_option('quick_adsense_adstxt_adsense_admin_notice_dismissed');
delete_option('quick_adsense_settings');
delete_site_option('quick_adsense_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_stats' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('quick_adsense_2_options');
delete_site_option('quick_adsense_2_options');
delete_option('quick_adsense_2_options_bak');
delete_site_option('quick_adsense_2_options_bak');
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

// Delete Transients
delete_transient('quick_adsense_adstxt_adsense_autocheck_content');
delete_site_transient('quick_adsense_adstxt_adsense_autocheck_content');

