<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zenfpd_dbuser');
delete_site_option('zenfpd_dbuser');
delete_option('zenfpd_dbpwd');
delete_site_option('zenfpd_dbpwd');
delete_option('zenfpd_dbname');
delete_site_option('zenfpd_dbname');
delete_option('zenfpd_dbhost');
delete_site_option('zenfpd_dbhost');
delete_option('zenfpd_prefix');
delete_site_option('zenfpd_prefix');
delete_option('zenfpd_image_width');
delete_site_option('zenfpd_image_width');
delete_option('zenfpd_image_height');
delete_site_option('zenfpd_image_height');
delete_option('zenfpd_store_url');
delete_site_option('zenfpd_store_url');
delete_option('zenfpd_prod_img_folder');
delete_site_option('zenfpd_prod_img_folder');
delete_option('zenfpd_new_product_days');
delete_site_option('zenfpd_new_product_days');

