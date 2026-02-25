<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dr_options');
delete_site_option('dr_options');
delete_option('fh_dr_do_activation_redirect');
delete_site_option('fh_dr_do_activation_redirect');
delete_option('fh_dr_show_activation_msg');
delete_site_option('fh_dr_show_activation_msg');

