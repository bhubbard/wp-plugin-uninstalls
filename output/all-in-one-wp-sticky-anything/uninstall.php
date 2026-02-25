<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai1wpsa_settings');
delete_site_option('ai1wpsa_settings');
delete_option('ai1wpsa_review_dismissed');
delete_site_option('ai1wpsa_review_dismissed');
delete_option('ai1wpsa_install_time');
delete_site_option('ai1wpsa_install_time');
delete_option('ai1wpsa_sticky_header');
delete_site_option('ai1wpsa_sticky_header');
delete_option('ai1wpsa_z_index');
delete_site_option('ai1wpsa_z_index');
delete_option('ai1wpsa_version');
delete_site_option('ai1wpsa_version');
delete_option('stickyclass');
delete_site_option('stickyclass');

