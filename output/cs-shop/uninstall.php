<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csshop_rakuten_aid');
delete_site_option('csshop_rakuten_aid');
delete_option('csshop_rakuten_did');
delete_site_option('csshop_rakuten_did');
delete_option('csshop_amazon_access_id');
delete_site_option('csshop_amazon_access_id');
delete_option('csshop_amazon_secret_id');
delete_site_option('csshop_amazon_secret_id');
delete_option('csshop_amazon_assoc');
delete_site_option('csshop_amazon_assoc');
delete_option('csshop_yahoo_appid');
delete_site_option('csshop_yahoo_appid');
delete_option('csshop_yahoo_affiliate_id');
delete_site_option('csshop_yahoo_affiliate_id');
delete_option('csshop_linkshare_token');
delete_site_option('csshop_linkshare_token');
delete_option('csshop_valuecommerce_token');
delete_site_option('csshop_valuecommerce_token');

