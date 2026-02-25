<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('REVI_WIDGETS');
delete_site_option('REVI_WIDGETS');
delete_option('REVI_API_METHOD');
delete_site_option('REVI_API_METHOD');
delete_option('REVI_API_WORKING_URL');
delete_site_option('REVI_API_WORKING_URL');
delete_option('REVI_API_KEY');
delete_site_option('REVI_API_KEY');
delete_option('REVI_LAST_UPGRADE_VERSION');
delete_site_option('REVI_LAST_UPGRADE_VERSION');
delete_option('REVI_SELECTED_LANGUAGE');
delete_site_option('REVI_SELECTED_LANGUAGE');
delete_option('REVI_SUBSCRIPTION');
delete_site_option('REVI_SUBSCRIPTION');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'REVI_WIDGET_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('REVI_SECURITY_KEY');
delete_site_option('REVI_SECURITY_KEY');
delete_option('REVI_LANG');
delete_site_option('REVI_LANG');
delete_option('REVI_ACTIVE_LANGUAGES');
delete_site_option('REVI_ACTIVE_LANGUAGES');
delete_option('REVI_MODULE_VERSION');
delete_site_option('REVI_MODULE_VERSION');
delete_option('REVI_ORDER_STATUSES');
delete_site_option('REVI_ORDER_STATUSES');
delete_option('REVI_SYNC_PRODUCT_DESCRIPTION');
delete_site_option('REVI_SYNC_PRODUCT_DESCRIPTION');
delete_option('REVI_DISPLAY_WIDGET_QUESTIONS_BIG');
delete_site_option('REVI_DISPLAY_WIDGET_QUESTIONS_BIG');
delete_option('REVI_DISPLAY_WIDGET_QUESTIONS_SMALL');
delete_site_option('REVI_DISPLAY_WIDGET_QUESTIONS_SMALL');
delete_option('REVI_DISPLAY_WIDGET_WITHOUT_REVIEWS');
delete_site_option('REVI_DISPLAY_WIDGET_WITHOUT_REVIEWS');
delete_option('REVI_CRON_TOKEN');
delete_site_option('REVI_CRON_TOKEN');
delete_option('REVI_NOTIFICATIONS');
delete_site_option('REVI_NOTIFICATIONS');
delete_option('REVI_PRODUCT_METADATA');
delete_site_option('REVI_PRODUCT_METADATA');
delete_option('REVI_TAB_REVIEWS');
delete_site_option('REVI_TAB_REVIEWS');
delete_option('REVI_PRODUCT_STARS_POSITION');
delete_site_option('REVI_PRODUCT_STARS_POSITION');
delete_option('REVI_DISPLAY_WIDGET_FLOATING');
delete_site_option('REVI_DISPLAY_WIDGET_FLOATING');
delete_option('REVI_WOOCOMMERCE_REVIEWS');
delete_site_option('REVI_WOOCOMMERCE_REVIEWS');
delete_option('REVI_DISPLAY_PRODUCT_LIST_ALIGN');
delete_site_option('REVI_DISPLAY_PRODUCT_LIST_ALIGN');
delete_option('REVI_DISPLAY_PRODUCT_LIST_EMPTY');
delete_site_option('REVI_DISPLAY_PRODUCT_LIST_EMPTY');
delete_option('REVI_DISPLAY_PRODUCT_LIST_BLANK_SPACE');
delete_site_option('REVI_DISPLAY_PRODUCT_LIST_BLANK_SPACE');
delete_option('REVI_DISPLAY_PRODUCT_LIST_TEXT');
delete_site_option('REVI_DISPLAY_PRODUCT_LIST_TEXT');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpml_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpml_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpml_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpml_language' ) );

