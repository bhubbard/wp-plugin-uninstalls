<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcatct_global_txt');
delete_site_option('wcatct_global_txt');
delete_option('wcatct_global_txt_diff');
delete_site_option('wcatct_global_txt_diff');
delete_option('wcatct_archive_txt');
delete_site_option('wcatct_archive_txt');
delete_option('wcatct_product_type_txt_diff_archive');
delete_site_option('wcatct_product_type_txt_diff_archive');
delete_option('wcatct_single_txt');
delete_site_option('wcatct_single_txt');
delete_option('wcatct_product_type_txt_diff_single');
delete_site_option('wcatct_product_type_txt_diff_single');

