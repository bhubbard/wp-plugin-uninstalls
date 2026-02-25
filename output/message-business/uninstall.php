<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MESSAGE_BUSINESS_ACCOUNTID');
delete_site_option('MESSAGE_BUSINESS_ACCOUNTID');
delete_option('MESSAGE_BUSINESS_APIKEY');
delete_site_option('MESSAGE_BUSINESS_APIKEY');
delete_option('MESSAGE_BUSINESS_FORMBUILDEROPTIONS');
delete_site_option('MESSAGE_BUSINESS_FORMBUILDEROPTIONS');
delete_option('MESSAGE_BUSINESS_INPUTSUBMITBUTTONTEXT');
delete_site_option('MESSAGE_BUSINESS_INPUTSUBMITBUTTONTEXT');
delete_option('MESSAGE_BUSINESS_HIDEFORMAFTERSUBMIT');
delete_site_option('MESSAGE_BUSINESS_HIDEFORMAFTERSUBMIT');
delete_option('MESSAGE_BUSINESS_WIDGETFORMHTML');
delete_site_option('MESSAGE_BUSINESS_WIDGETFORMHTML');
delete_option('MESSAGE_BUSINESS_SHOP_URL');
delete_site_option('MESSAGE_BUSINESS_SHOP_URL');
delete_option('MESSSAGE_BUSINESS_CONSUMER_KEY');
delete_site_option('MESSSAGE_BUSINESS_CONSUMER_KEY');
delete_option('MESSAGE_BUSINESS_CONSUMER_SECRET');
delete_site_option('MESSAGE_BUSINESS_CONSUMER_SECRET');
delete_option('MESSAGE_BUSINESS_LAST_PAGE_CUSTOMERS');
delete_site_option('MESSAGE_BUSINESS_LAST_PAGE_CUSTOMERS');
delete_option('MESSAGE_BUSINESS_START_DATE_LAST_IMPORT_CUSTOMERS');
delete_site_option('MESSAGE_BUSINESS_START_DATE_LAST_IMPORT_CUSTOMERS');
delete_option('MESSAGE_BUSINESS_END_DATE_LAST_IMPORT_CUSTOMERS');
delete_site_option('MESSAGE_BUSINESS_END_DATE_LAST_IMPORT_CUSTOMERS');
delete_option('MESSAGE_BUSINESS_IMPORT_CUSTOMERS_FREQUENCY');
delete_site_option('MESSAGE_BUSINESS_IMPORT_CUSTOMERS_FREQUENCY');
delete_option('MESSAGE_BUSINESS_CONSUMER_KEY');
delete_site_option('MESSAGE_BUSINESS_CONSUMER_KEY');

// Clear Cron Jobs
wp_clear_scheduled_hook('message_business_import_contacts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_woocommerce_updated_cart_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_woocommerce_updated_cart_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_woocommerce_updated_cart_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_woocommerce_updated_cart_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login' ) );

