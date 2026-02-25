<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revechat_aid');
delete_site_option('revechat_aid');
delete_option('revechat_wc_storeUrl');
delete_site_option('revechat_wc_storeUrl');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('revechat_wc_consumerKey');
delete_site_option('revechat_wc_consumerKey');
delete_option('revechat_wc_consumerSecret');
delete_site_option('revechat_wc_consumerSecret');
delete_option('revechat_wc_aid');
delete_site_option('revechat_wc_aid');

