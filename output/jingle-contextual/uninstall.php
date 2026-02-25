<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jc_shoplist');
delete_site_option('jc_shoplist');
delete_option('jc_2p_uc');
delete_site_option('jc_2p_uc');
delete_option('jc_bc');
delete_site_option('jc_bc');
delete_option('jc_color');
delete_site_option('jc_color');
delete_option('jc_nproducts');
delete_site_option('jc_nproducts');
delete_option('jc_mwidth');
delete_site_option('jc_mwidth');
delete_option('jc_2p_user');
delete_site_option('jc_2p_user');
delete_option('jc_2p_password');
delete_site_option('jc_2p_password');
delete_option('nproducts');
delete_site_option('nproducts');
delete_option('mwidth');
delete_site_option('mwidth');

