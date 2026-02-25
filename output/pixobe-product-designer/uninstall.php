<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pixobe_product_designer_nonce');
delete_site_option('pixobe_product_designer_nonce');
delete_option('pixobe_product_designer_site_id');
delete_site_option('pixobe_product_designer_site_id');
delete_option('pixobe_product_designer_plan');
delete_site_option('pixobe_product_designer_plan');
delete_option('pixobe_product_designer_message');
delete_site_option('pixobe_product_designer_message');
delete_option('pixobe_product_designer_expiry');
delete_site_option('pixobe_product_designer_expiry');

