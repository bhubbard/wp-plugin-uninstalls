<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbfs_no_jquery');
delete_site_option('fbfs_no_jquery');
delete_option('fbfs_no_css');
delete_site_option('fbfs_no_css');
delete_option('fbfs_fburi');
delete_site_option('fbfs_fburi');
delete_option('fbfs_no_close');
delete_site_option('fbfs_no_close');
delete_option('fbfs_no_never_show');
delete_site_option('fbfs_no_never_show');
delete_option('fbfs_tagline');
delete_site_option('fbfs_tagline');
delete_option('fbfs_def_email');
delete_site_option('fbfs_def_email');
delete_option('fbfs_def_submit');
delete_site_option('fbfs_def_submit');

