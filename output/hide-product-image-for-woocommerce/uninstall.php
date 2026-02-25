<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_prod_img_wc_db_version');
delete_site_option('hide_prod_img_wc_db_version');
delete_option('hpifwc_hide_all_prod_img');
delete_site_option('hpifwc_hide_all_prod_img');

