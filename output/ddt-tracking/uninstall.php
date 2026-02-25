<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DDT_Facebook_events_url');
delete_site_option('DDT_Facebook_events_url');
delete_option('DDT_Pixel_Facebook_auto_setup');
delete_site_option('DDT_Pixel_Facebook_auto_setup');
delete_option('DDT_Pixel_Facebook_auto_setup_apikey');
delete_site_option('DDT_Pixel_Facebook_auto_setup_apikey');
delete_option('DDT_Facebook_Nav_disable_nav');
delete_site_option('DDT_Facebook_Nav_disable_nav');
delete_option('DDT_Facebook_Nav_Pixel_Activated');
delete_site_option('DDT_Facebook_Nav_Pixel_Activated');
delete_option('DDT_Facebook_Nav_disable_coockieplugin');
delete_site_option('DDT_Facebook_Nav_disable_coockieplugin');
delete_option('DDT_Facebook_Nav_Pixel_Id');
delete_site_option('DDT_Facebook_Nav_Pixel_Id');
delete_option('DDT_Facebook_Nav_account_Id');
delete_site_option('DDT_Facebook_Nav_account_Id');
delete_option('DDT_Facebook_Nav_account_name');
delete_site_option('DDT_Facebook_Nav_account_name');
delete_option('DDT_Pixel_Facebook_Position');
delete_site_option('DDT_Pixel_Facebook_Position');
delete_option('DDT_Facebook_Nav_ecommerce_Activated');
delete_site_option('DDT_Facebook_Nav_ecommerce_Activated');
delete_option('DDT_Facebook_Nav_woocommerce_Activated');
delete_site_option('DDT_Facebook_Nav_woocommerce_Activated');
delete_option('DDT_Facebook_Nav_woocommerce_addtocard_Eventtype');
delete_site_option('DDT_Facebook_Nav_woocommerce_addtocard_Eventtype');
delete_option('DDT_Facebook_Nav_woocommerce_checkout_Eventtype');
delete_site_option('DDT_Facebook_Nav_woocommerce_checkout_Eventtype');
delete_option('DDT_Facebook_Nav_woocommerce_purchase_Eventtype');
delete_site_option('DDT_Facebook_Nav_woocommerce_purchase_Eventtype');
delete_option('DDT_Facebook_Nav_ecommerce_thankyou_Activated');
delete_site_option('DDT_Facebook_Nav_ecommerce_thankyou_Activated');
delete_option('DDT_Facebook_Nav_ecommerce_thankyou_page');
delete_site_option('DDT_Facebook_Nav_ecommerce_thankyou_page');
delete_option('DDT_Facebook_Nav_contact_Activated');
delete_site_option('DDT_Facebook_Nav_contact_Activated');
delete_option('DDT_Facebook_Nav_contact_cf7_Activated');
delete_site_option('DDT_Facebook_Nav_contact_cf7_Activated');
delete_option('DDT_Facebook_Nav_contact_elementor_Activated');
delete_site_option('DDT_Facebook_Nav_contact_elementor_Activated');
delete_option('DDT_Facebook_Nav_contact_phoneemail_Activated');
delete_site_option('DDT_Facebook_Nav_contact_phoneemail_Activated');
delete_option('DDT_Facebook_Nav_contact_phoneemail_Email');
delete_site_option('DDT_Facebook_Nav_contact_phoneemail_Email');
delete_option('DDT_Facebook_Nav_contact_phoneemail_Phone');
delete_site_option('DDT_Facebook_Nav_contact_phoneemail_Phone');
delete_option('DDT_Facebook_Nav_contact_thankyou_Activated');
delete_site_option('DDT_Facebook_Nav_contact_thankyou_Activated');
delete_option('DDT_Facebook_Nav_contact_thankyou_page');
delete_site_option('DDT_Facebook_Nav_contact_thankyou_page');
delete_option('DDT_Facebook_Nav_Capi_Activated');
delete_site_option('DDT_Facebook_Nav_Capi_Activated');
delete_option('DDT_Facebook_Nav_Capi_token');
delete_site_option('DDT_Facebook_Nav_Capi_token');

