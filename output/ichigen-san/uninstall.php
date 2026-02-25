<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ichigen_san_enabling');
delete_site_option('ichigen_san_enabling');
delete_option('ichigen_san_basic_user');
delete_site_option('ichigen_san_basic_user');
delete_option('ichigen_san_basic_pass');
delete_site_option('ichigen_san_basic_pass');
delete_option('ichigen-san-convert');
delete_site_option('ichigen-san-convert');
delete_option('ichigen-san-initialization');
delete_site_option('ichigen-san-initialization');

