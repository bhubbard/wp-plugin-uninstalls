<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('comminform_namekey');
delete_site_option('comminform_namekey');
delete_option('comminform_emailkey');
delete_site_option('comminform_emailkey');
delete_option('comminform_subject');
delete_site_option('comminform_subject');
delete_option('comminform_message');
delete_site_option('comminform_message');

