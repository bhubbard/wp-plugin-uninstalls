<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keepspace_title');
delete_site_option('keepspace_title');
delete_option('keepspace_excerpt');
delete_site_option('keepspace_excerpt');
delete_option('keepspace_content');
delete_site_option('keepspace_content');
delete_option('keepspace_comment');
delete_site_option('keepspace_comment');
delete_option('keepspace_space_type');
delete_site_option('keepspace_space_type');

