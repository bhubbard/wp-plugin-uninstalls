<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pi_dtt_allow_shop_manager');
delete_site_option('pi_dtt_allow_shop_manager');
delete_option('pi_type');
delete_site_option('pi_type');
delete_option('pi_dtt_remove_billing_when_pickup-pro');
delete_site_option('pi_dtt_remove_billing_when_pickup-pro');
delete_option('pi_dtt_remove_billing_when_delivery-pro');
delete_site_option('pi_dtt_remove_billing_when_delivery-pro');
delete_option('pisol_dtt_pickup_dd');
delete_site_option('pisol_dtt_pickup_dd');
delete_option('pisol_dtt_delivery_dd');
delete_site_option('pisol_dtt_delivery_dd');
delete_option('pi_use_time_slot');
delete_site_option('pi_use_time_slot');
delete_option('pi_dtt_auto_slot_created');
delete_site_option('pi_dtt_auto_slot_created');
delete_option('pi_general_time_slot_delivery');
delete_site_option('pi_general_time_slot_delivery');
delete_option('pi_general_time_slot_pickup');
delete_site_option('pi_general_time_slot_pickup');
delete_option('pi_delivery_start_time');
delete_site_option('pi_delivery_start_time');
delete_option('pi_delivery_end_time');
delete_site_option('pi_delivery_end_time');
delete_option('pi_pickup_start_time');
delete_site_option('pi_pickup_start_time');
delete_option('pi_pickup_end_time');
delete_site_option('pi_pickup_end_time');
delete_option('pi_datetime');
delete_site_option('pi_datetime');
delete_option('pi_pickup_address_1');
delete_site_option('pi_pickup_address_1');
delete_option('pi_pickup_address_2');
delete_site_option('pi_pickup_address_2');
delete_option('pi_dtt_do_activation_redirect');
delete_site_option('pi_dtt_do_activation_redirect');
delete_option('pi_dtt_co_label_date');
delete_site_option('pi_dtt_co_label_date');
delete_option('pi_dtt_co_label_time');
delete_site_option('pi_dtt_co_label_time');
delete_option('pi_show_delivery_type_label');
delete_site_option('pi_show_delivery_type_label');

