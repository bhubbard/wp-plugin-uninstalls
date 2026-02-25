<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shf_admin_footer_content');
delete_site_option('shf_admin_footer_content');
delete_option('shf_admin_header_content');
delete_site_option('shf_admin_header_content');
delete_option('shf_footer_content');
delete_site_option('shf_footer_content');
delete_option('shf_header_content');
delete_site_option('shf_header_content');
delete_option('shf_add_to_admin_footer');
delete_site_option('shf_add_to_admin_footer');

