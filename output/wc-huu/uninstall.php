<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('setup_huu_wts_prod_box_block_woo');
delete_site_option('setup_huu_wts_prod_box_block_woo');
delete_option('setup_huu_wts_prod_box_woo');
delete_site_option('setup_huu_wts_prod_box_woo');
delete_option('setup_huu_wts_prod_page_woo');
delete_site_option('setup_huu_wts_prod_page_woo');
delete_option('setup_huu_wts_text_woo');
delete_site_option('setup_huu_wts_text_woo');
delete_option('setup_huu_wts_number_woo');
delete_site_option('setup_huu_wts_number_woo');

