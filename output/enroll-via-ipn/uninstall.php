<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('EVI_Customer_List_Form_ID');
delete_site_option('EVI_Customer_List_Form_ID');
delete_option('EVI_Customer_List_Autoresponder_ID');
delete_site_option('EVI_Customer_List_Autoresponder_ID');
delete_option('EVI_Track_Sales');
delete_site_option('EVI_Track_Sales');
delete_option('wpr_address');
delete_site_option('wpr_address');
delete_option('EVI_Paypal_Seller_email');
delete_site_option('EVI_Paypal_Seller_email');
delete_option('EVI_Notification_email');
delete_site_option('EVI_Notification_email');
delete_option('EVI_Notify_On_Valid_IPN');
delete_site_option('EVI_Notify_On_Valid_IPN');

