<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ext_dismissed_info_banner');
delete_site_option('ext_dismissed_info_banner');
delete_option('woocommerce_dismissed_info_banner');
delete_site_option('woocommerce_dismissed_info_banner');
delete_option('woocommerce_ba_id');
delete_site_option('woocommerce_ba_id');
delete_option('woocommerce_bmerch_id');
delete_site_option('woocommerce_bmerch_id');

