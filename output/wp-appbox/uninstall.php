<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpAppbox_autoLinks');
delete_site_option('wpAppbox_autoLinks');
delete_option('wpAppbox_anonymizeLinks');
delete_site_option('wpAppbox_anonymizeLinks');
delete_option('wpAppbox_includeCSS');
delete_site_option('wpAppbox_includeCSS');
delete_option('wpAppbox_disableDefer');
delete_site_option('wpAppbox_disableDefer');
delete_option('wpAppbox_disableFonts');
delete_site_option('wpAppbox_disableFonts');
delete_option('wpAppbox_amaAPIuse');
delete_site_option('wpAppbox_amaAPIuse');
delete_option('wpAppbox_amaAPIhost');
delete_site_option('wpAppbox_amaAPIhost');
delete_option('wpAppbox_amaAPIpartnerTag');
delete_site_option('wpAppbox_amaAPIpartnerTag');
delete_option('wpAppbox_amaAPIaccessKey');
delete_site_option('wpAppbox_amaAPIaccessKey');
delete_option('wpAppbox_amaAPIsecretKey');
delete_site_option('wpAppbox_amaAPIsecretKey');
delete_option('wpAppbox_curlTimeout');
delete_site_option('wpAppbox_curlTimeout');
delete_option('wpAppbox_eOnlyAuthors');
delete_site_option('wpAppbox_eOnlyAuthors');
delete_option('wpAppbox_eOutput');
delete_site_option('wpAppbox_eOutput');
delete_option('wpAppbox_forceSSL');
delete_site_option('wpAppbox_forceSSL');
delete_option('wpAppbox_imgCache');
delete_site_option('wpAppbox_imgCache');
delete_option('wpAppbox_imgCacheMode');
delete_site_option('wpAppbox_imgCacheMode');
delete_option('wpAppbox_renderGutenberg');
delete_site_option('wpAppbox_renderGutenberg');
delete_option('wpAppbox_imgProxy');
delete_site_option('wpAppbox_imgProxy');
delete_option('wpAppbox_defaultButton');
delete_site_option('wpAppbox_defaultButton');
delete_option('wpAppbox_advancedToolbar');
delete_site_option('wpAppbox_advancedToolbar');
delete_option('wpAppbox_cacheTime');
delete_site_option('wpAppbox_cacheTime');
delete_option('wpAppbox_cacheMode');
delete_site_option('wpAppbox_cacheMode');
delete_option('wpAppbox_cronIntervall');
delete_site_option('wpAppbox_cronIntervall');
delete_option('wpAppbox_cronCount');
delete_site_option('wpAppbox_cronCount');
delete_option('wpAppbox_cachePlugin');
delete_site_option('wpAppbox_cachePlugin');
delete_option('wpAppbox_blockMissing');
delete_site_option('wpAppbox_blockMissing');
delete_option('wpAppbox_blockMissingTime');
delete_site_option('wpAppbox_blockMissingTime');
delete_option('wpAppbox_imgCacheDelay');
delete_site_option('wpAppbox_imgCacheDelay');
delete_option('wpAppbox_imgCacheDelayTime');
delete_site_option('wpAppbox_imgCacheDelayTime');
delete_option('wpAppbox_pluginVersion');
delete_site_option('wpAppbox_pluginVersion');
delete_option('wpAppbox_dbVersion');
delete_site_option('wpAppbox_dbVersion');
delete_option('wpAppbox_defaultStyle');
delete_site_option('wpAppbox_defaultStyle');
delete_option('wpAppbox_colorfulIcons');
delete_site_option('wpAppbox_colorfulIcons');
delete_option('wpAppbox_showRating');
delete_site_option('wpAppbox_showRating');
delete_option('wpAppbox_nofollow');
delete_site_option('wpAppbox_nofollow');
delete_option('wpAppbox_targetBlank');
delete_site_option('wpAppbox_targetBlank');
delete_option('imgCacheDelayTime');
delete_site_option('imgCacheDelayTime');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpAppbox_storeURL_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpAppbox_storeURL_URL_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpAppbox_screenshotTabs');
delete_site_option('wpAppbox_screenshotTabs');
delete_option('wpAppbox_dontGreyOut');
delete_site_option('wpAppbox_dontGreyOut');
delete_option('wpAppbox_downloadCaption');
delete_site_option('wpAppbox_downloadCaption');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_URL' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpAppbox_notifyLastV');
delete_site_option('wpAppbox_notifyLastV');
delete_option('wpAppbox_replaceAppIcons');
delete_site_option('wpAppbox_replaceAppIcons');
delete_option('wpAppbox_amaAPIstatus');
delete_site_option('wpAppbox_amaAPIstatus');
delete_option('wpAppbox_buttonWYSIWYG_amazonapps');
delete_site_option('wpAppbox_buttonWYSIWYG_amazonapps');
delete_option('wpAppbox_buttonWYSIWYG_appstore');
delete_site_option('wpAppbox_buttonWYSIWYG_appstore');
delete_option('wpAppbox_buttonWYSIWYG_chromewebstore');
delete_site_option('wpAppbox_buttonWYSIWYG_chromewebstore');
delete_option('wpAppbox_buttonWYSIWYG_edgeaddons');
delete_site_option('wpAppbox_buttonWYSIWYG_edgeaddons');
delete_option('wpAppbox_buttonWYSIWYG_fdroid');
delete_site_option('wpAppbox_buttonWYSIWYG_fdroid');
delete_option('wpAppbox_buttonWYSIWYG_firefoxaddon');
delete_site_option('wpAppbox_buttonWYSIWYG_firefoxaddon');
delete_option('wpAppbox_buttonWYSIWYG_googleplay');
delete_site_option('wpAppbox_buttonWYSIWYG_googleplay');
delete_option('wpAppbox_buttonWYSIWYG_microsoftstore');
delete_site_option('wpAppbox_buttonWYSIWYG_microsoftstore');
delete_option('wpAppbox_buttonWYSIWYG_operaaddons');
delete_site_option('wpAppbox_buttonWYSIWYG_operaaddons');
delete_option('wpAppbox_buttonWYSIWYG_snapcraft');
delete_site_option('wpAppbox_buttonWYSIWYG_snapcraft');
delete_option('wpAppbox_buttonWYSIWYG_wordpress');
delete_site_option('wpAppbox_buttonWYSIWYG_wordpress');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpAppbox_buttonAppbox_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpAppbox_buttonHTML_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpAppbox_disableAutoCache');
delete_site_option('wpAppbox_disableAutoCache');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpAppbox_buttonWYSIWYG_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpAppbox_buttonHidden_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpAppbox_buttonHidden_e%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_transient_timeout_wpAppbox_blockGooglePlay');
delete_site_option('_transient_timeout_wpAppbox_blockGooglePlay');
delete_option('wpAppbox_amaAPIregion');
delete_site_option('wpAppbox_amaAPIregion');
delete_option('wpAppbox_amaAPIaccesskey');
delete_site_option('wpAppbox_amaAPIaccesskey');
delete_option('wpAppbox_amaAPIsecretkey');
delete_site_option('wpAppbox_amaAPIsecretkey');
delete_option('wpappbox_cachePlugin');
delete_site_option('wpappbox_cachePlugin');
delete_option('wpAppbox_userAffiliate');
delete_site_option('wpAppbox_userAffiliate');
delete_option('wpAppbox_affiliateMicrosoftDev');
delete_site_option('wpAppbox_affiliateMicrosoftDev');
delete_option('wpAppbox_affiliateMicrosoftProgram');
delete_site_option('wpAppbox_affiliateMicrosoftProgram');
delete_option('wpAppbox_affiliateMicrosoftID');
delete_site_option('wpAppbox_affiliateMicrosoftID');
delete_option('wpAppbox_storeURL_amazon');
delete_site_option('wpAppbox_storeURL_amazon');
delete_option('wpAppbox_affiliateAmazonID');
delete_site_option('wpAppbox_affiliateAmazonID');
delete_option('wpAppbox_affiliateAmazonDev');
delete_site_option('wpAppbox_affiliateAmazonDev');
delete_option('wpAppbox_amaAPIpublicKey');
delete_site_option('wpAppbox_amaAPIpublicKey');
delete_option('wpAppbox_cacheCronjob');
delete_site_option('wpAppbox_cacheCronjob');
delete_option('wpAppbox_disableCSS');
delete_site_option('wpAppbox_disableCSS');
delete_option('wpAppbox_affiliateApple');
delete_site_option('wpAppbox_affiliateApple');
delete_option('wpAppbox_affiliateAppleDev');
delete_site_option('wpAppbox_affiliateAppleDev');
delete_option('wpAppbox_affiliateAmazon');
delete_site_option('wpAppbox_affiliateAmazon');
delete_option('wpAppbox_affiliateMicrosoft');
delete_site_option('wpAppbox_affiliateMicrosoft');
delete_option('wpAppbox_iTunesGeo');
delete_site_option('wpAppbox_iTunesGeo');
delete_option('wpAppbox_sslAppleImages');
delete_site_option('wpAppbox_sslAppleImages');
delete_option('wpAppbox_eImageApple');
delete_site_option('wpAppbox_eImageApple');
delete_option('wpAppbox_disableCache');
delete_site_option('wpAppbox_disableCache');
delete_option('wpAppbox_showReload');
delete_site_option('wpAppbox_showReload');
delete_option('wpAppbox_imageCache');
delete_site_option('wpAppbox_imageCache');
delete_option('wpAppbox_imageCacheMode');
delete_site_option('wpAppbox_imageCacheMode');
delete_option('wpAppbox');
delete_site_option('wpAppbox');

// Delete Transients
delete_transient('wpAppbox_imgCacheBlocked');
delete_site_transient('wpAppbox_imgCacheBlocked');
delete_transient('wpAppbox_blockGooglePlay');
delete_site_transient('wpAppbox_blockGooglePlay');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpAppbox_cacheCron');

