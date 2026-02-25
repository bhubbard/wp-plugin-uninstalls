<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wrvpp_enable_popup');
delete_site_option('wrvpp_enable_popup');
delete_option('wrvpp_display_on');
delete_site_option('wrvpp_display_on');
delete_option('wrvpp_limit_products');
delete_site_option('wrvpp_limit_products');
delete_option('wrvpp_modal_title');
delete_site_option('wrvpp_modal_title');
delete_option('wrvpp_max_products');
delete_site_option('wrvpp_max_products');
delete_option('wrvpp_popup_position');
delete_site_option('wrvpp_popup_position');
delete_option('wrvpp_popup_link_text');
delete_site_option('wrvpp_popup_link_text');

