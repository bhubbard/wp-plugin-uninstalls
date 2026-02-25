<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooid_script_cart_widget');
delete_site_option('wooid_script_cart_widget');
delete_option('wooyd_widget_geo');
delete_site_option('wooyd_widget_geo');
delete_option('wooyd_widget_info');
delete_site_option('wooyd_widget_info');
delete_option('wooyd_widget_card');
delete_site_option('wooyd_widget_card');
delete_option('wooid_script_track_widget');
delete_site_option('wooid_script_track_widget');
delete_option('wooyd_script_track_widget');
delete_site_option('wooyd_script_track_widget');

