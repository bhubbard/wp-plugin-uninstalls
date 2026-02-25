<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flance_amp_product_cat');
delete_site_option('flance_amp_product_cat');
delete_option('showname');
delete_site_option('showname');
delete_option('showimage');
delete_site_option('showimage');
delete_option('attribute');
delete_site_option('attribute');
delete_option('showdesc');
delete_site_option('showdesc');
delete_option('showsku');
delete_site_option('showsku');
delete_option('splitchild');
delete_site_option('splitchild');
delete_option('showmfk');
delete_site_option('showmfk');
delete_option('category');
delete_site_option('category');
delete_option('showpkg');
delete_site_option('showpkg');
delete_option('showprice');
delete_site_option('showprice');
delete_option('showquantity');
delete_site_option('showquantity');
delete_option('showaddtocart');
delete_site_option('showaddtocart');
delete_option('redirect');
delete_site_option('redirect');
delete_option('reload');
delete_site_option('reload');
delete_option('redirectlink');
delete_site_option('redirectlink');
delete_option('showlink');
delete_site_option('showlink');
delete_option('instock');
delete_site_option('instock');
delete_option('flance_amp_user_check');
delete_site_option('flance_amp_user_check');
delete_option('flance_amp_user_role');
delete_site_option('flance_amp_user_role');
delete_option('flance_amp_do_activation_redirect');
delete_site_option('flance_amp_do_activation_redirect');
delete_option(' splitchild');
delete_site_option(' splitchild');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

