<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gt_tax_btn_state');
delete_site_option('gt_tax_btn_state');
delete_option('gt_tax_text');
delete_site_option('gt_tax_text');
delete_option('gt_tax_btn_text');
delete_site_option('gt_tax_btn_text');
delete_option('gt_tax_btn_toggle_text');
delete_site_option('gt_tax_btn_toggle_text');
delete_option('gt_tax_bg_color');
delete_site_option('gt_tax_bg_color');
delete_option('gt_tax_text_color');
delete_site_option('gt_tax_text_color');
delete_option('woocommerce_tax_display_shop');
delete_site_option('woocommerce_tax_display_shop');

