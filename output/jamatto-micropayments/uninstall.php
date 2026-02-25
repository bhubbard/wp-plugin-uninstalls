<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FIELD_bid');
delete_site_option('FIELD_bid');
delete_option('FIELD_ccy');
delete_site_option('FIELD_ccy');
delete_option('FIELD_autodonate');
delete_site_option('FIELD_autodonate');
delete_option('FIELD_premium_amount');
delete_site_option('FIELD_premium_amount');
delete_option('FIELD_premium_caption');
delete_site_option('FIELD_premium_caption');
delete_option('FIELD_premium_prompt');
delete_site_option('FIELD_premium_prompt');
delete_option('FIELD_premium_color_background');
delete_site_option('FIELD_premium_color_background');
delete_option('FIELD_premium_color_edge');
delete_site_option('FIELD_premium_color_edge');
delete_option('FIELD_premium_sticky_purchase');
delete_site_option('FIELD_premium_sticky_purchase');
delete_option('FIELD_premium_category_amount');
delete_site_option('FIELD_premium_category_amount');
delete_option('FIELD_premium_role_exempt');
delete_site_option('FIELD_premium_role_exempt');
delete_option('FIELD_donation_amount');
delete_site_option('FIELD_donation_amount');
delete_option('FIELD_donation_caption');
delete_site_option('FIELD_donation_caption');
delete_option('FIELD_donation_prompt');
delete_site_option('FIELD_donation_prompt');
delete_option('FIELD_donation_thanks');
delete_site_option('FIELD_donation_thanks');

