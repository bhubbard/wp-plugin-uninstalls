<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adxbyms_enabled');
delete_site_option('adxbyms_enabled');
delete_option('adxbyms_custom_enabled');
delete_site_option('adxbyms_custom_enabled');
delete_option('adxbyms_header_code');
delete_site_option('adxbyms_header_code');
delete_option('adxbyms_footer_code');
delete_site_option('adxbyms_footer_code');
delete_option('adxbyms_ads_txt_code');
delete_site_option('adxbyms_ads_txt_code');
delete_option('adxbyms_popup_scroll_trigger');
delete_site_option('adxbyms_popup_scroll_trigger');
delete_option('adxbyms_anchor_position');
delete_site_option('adxbyms_anchor_position');
delete_option('adxbyms_ads_txt_enabled');
delete_site_option('adxbyms_ads_txt_enabled');
delete_option('adxbyms_anchor_enabled');
delete_site_option('adxbyms_anchor_enabled');
delete_option('adxbyms_anchor_network_code');
delete_site_option('adxbyms_anchor_network_code');
delete_option('adxbyms_ad2_enabled');
delete_site_option('adxbyms_ad2_enabled');
delete_option('adxbyms_ad2_network_code');
delete_site_option('adxbyms_ad2_network_code');
delete_option('adxbyms_ad2_keywords');
delete_site_option('adxbyms_ad2_keywords');
delete_option('adxbyms_slot_enabled');
delete_site_option('adxbyms_slot_enabled');
delete_option('adxbyms_interstitial_enabled');
delete_site_option('adxbyms_interstitial_enabled');
delete_option('adxbyms_interstitial_network_code');
delete_site_option('adxbyms_interstitial_network_code');
delete_option('adxbyms_offerwall_onscroll_enabled');
delete_site_option('adxbyms_offerwall_onscroll_enabled');
delete_option('adxbyms_offerwall_onscroll_network_code');
delete_site_option('adxbyms_offerwall_onscroll_network_code');
delete_option('adxbyms_offerwall_onscroll_logo_url');
delete_site_option('adxbyms_offerwall_onscroll_logo_url');
delete_option('adxbyms_popup_enabled');
delete_site_option('adxbyms_popup_enabled');
delete_option('adxbyms_popup_network_code');
delete_site_option('adxbyms_popup_network_code');
delete_option('adxbyms_popup_option');
delete_site_option('adxbyms_popup_option');

