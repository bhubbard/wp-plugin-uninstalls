<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hcc_allowed_tags');
delete_site_option('hcc_allowed_tags');
delete_option('hcc_encode_html');
delete_site_option('hcc_encode_html');
delete_option('hcc_warning_message');
delete_site_option('hcc_warning_message');
delete_option('hcc_force_links_target');
delete_site_option('hcc_force_links_target');
delete_option('hcc_version');
delete_site_option('hcc_version');

