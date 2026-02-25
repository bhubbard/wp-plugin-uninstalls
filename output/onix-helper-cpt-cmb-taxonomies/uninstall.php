<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onix_meta_box_cpt');
delete_site_option('onix_meta_box_cpt');
delete_option('onix_meta_box_fields');
delete_site_option('onix_meta_box_fields');
delete_option('onix_meta_box_tax');
delete_site_option('onix_meta_box_tax');
delete_option('onix_meta_box');
delete_site_option('onix_meta_box');

