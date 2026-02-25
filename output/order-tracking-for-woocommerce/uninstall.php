<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sn_ot_carriers');
delete_site_option('sn_ot_carriers');
delete_option('sn_ot_shipping_detail_text');
delete_site_option('sn_ot_shipping_detail_text');
delete_option('sn_ot_tracking_detail_text');
delete_site_option('sn_ot_tracking_detail_text');
delete_option('sn_ot_tracking_form_caption');
delete_site_option('sn_ot_tracking_form_caption');
delete_option('sn_ot_no_tracking_detail_found_text');
delete_site_option('sn_ot_no_tracking_detail_found_text');
delete_option('sn_ot_show_order_detail');
delete_site_option('sn_ot_show_order_detail');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

