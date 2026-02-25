<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tagtagjidou');
delete_site_option('tagtagjidou');
delete_option('adrestag');
delete_site_option('adrestag');
delete_option('tagtag_rendo');
delete_site_option('tagtag_rendo');
delete_option('tagtag_ng');
delete_site_option('tagtag_ng');
delete_option('tagtagallng');
delete_site_option('tagtagallng');
delete_option('fjscp_order');
delete_site_option('fjscp_order');
delete_option('aoringotag_installed');
delete_site_option('aoringotag_installed');

