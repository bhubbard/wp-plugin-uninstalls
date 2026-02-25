<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rigwfz_title');
delete_site_option('rigwfz_title');
delete_option('rigwfz_width');
delete_site_option('rigwfz_width');
delete_option('rigwfz_dir');
delete_site_option('rigwfz_dir');
delete_option('rigwfz_title_yes');
delete_site_option('rigwfz_title_yes');

