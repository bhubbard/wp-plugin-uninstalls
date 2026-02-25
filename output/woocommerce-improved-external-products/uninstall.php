<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('improvedexternalproducts_sections');
delete_site_option('improvedexternalproducts_sections');
delete_option('woocommerce-improved-external-products');
delete_site_option('woocommerce-improved-external-products');
delete_option('iepp_do_activation_redirect');
delete_site_option('iepp_do_activation_redirect');
delete_option('wpo_iepp_pro_notice_dismissed');
delete_site_option('wpo_iepp_pro_notice_dismissed');
delete_option('iepp_go_pro_notice');
delete_site_option('iepp_go_pro_notice');
delete_option('wpo_iepp_pro_notice_shown');
delete_site_option('wpo_iepp_pro_notice_shown');

