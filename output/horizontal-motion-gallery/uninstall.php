<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('my_hmg_dir1');
delete_site_option('my_hmg_dir1');
delete_option('my_hmg_dir2');
delete_site_option('my_hmg_dir2');
delete_option('my_hmg_dir3');
delete_site_option('my_hmg_dir3');
delete_option('my_hmg_dir4');
delete_site_option('my_hmg_dir4');
delete_option('my_hmg_dir5');
delete_site_option('my_hmg_dir5');

