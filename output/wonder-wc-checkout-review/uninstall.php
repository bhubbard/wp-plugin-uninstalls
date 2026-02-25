<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wwcr_enable_checkout_review_page');
delete_site_option('wwcr_enable_checkout_review_page');
delete_option('wwcr_public_css_whereshow');
delete_site_option('wwcr_public_css_whereshow');
delete_option('wwcr_content_wrapper_selector');
delete_site_option('wwcr_content_wrapper_selector');
delete_option('wwcr_terminology_review_order_text');
delete_site_option('wwcr_terminology_review_order_text');
delete_option('wwcr_terminology_place_order_text');
delete_site_option('wwcr_terminology_place_order_text');
delete_option('wwcr_billing_section_title');
delete_site_option('wwcr_billing_section_title');
delete_option('wwcr_billing_section_format');
delete_site_option('wwcr_billing_section_format');
delete_option('wwcr_shipping_section_title');
delete_site_option('wwcr_shipping_section_title');
delete_option('wwcr_shipping_section_format');
delete_site_option('wwcr_shipping_section_format');
delete_option('wwcr_order_section_title');
delete_site_option('wwcr_order_section_title');
delete_option('wwcr_order_section_format');
delete_site_option('wwcr_order_section_format');

