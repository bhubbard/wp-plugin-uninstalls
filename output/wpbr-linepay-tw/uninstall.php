<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linepay_tw_payment_fail_order_status');
delete_site_option('linepay_tw_payment_fail_order_status');
delete_option('linepay_tw_detail_status_note_enabled');
delete_site_option('linepay_tw_detail_status_note_enabled');
delete_option('linepay_tw_debug_log_enabled');
delete_site_option('linepay_tw_debug_log_enabled');
delete_option('linepay_tw_sandboxmode_enabled');
delete_site_option('linepay_tw_sandboxmode_enabled');
delete_option('linepay_tw_channel_id');
delete_site_option('linepay_tw_channel_id');
delete_option('linepay_tw_channel_secret');
delete_site_option('linepay_tw_channel_secret');
delete_option('linepay_tw_sandbox_channel_id');
delete_site_option('linepay_tw_sandbox_channel_id');
delete_option('linepay_tw_sandbox_channel_secret');
delete_site_option('linepay_tw_sandbox_channel_secret');
delete_option('woocommerce_linepay-tw_settings');
delete_site_option('woocommerce_linepay-tw_settings');
delete_option('linepay_tw_display_logo_enabled');
delete_site_option('linepay_tw_display_logo_enabled');

