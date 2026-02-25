<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lws_aff_new_login');
delete_site_option('lws_aff_new_login');
delete_option('lws_aff_new_redirection');
delete_site_option('lws_aff_new_redirection');
delete_option('lwshl_do_not_ask_again');
delete_site_option('lwshl_do_not_ask_again');

// Delete Transients
delete_transient('lwshl_remind_me');
delete_site_transient('lwshl_remind_me');

