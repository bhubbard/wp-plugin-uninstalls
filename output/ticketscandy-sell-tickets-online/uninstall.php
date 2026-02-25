<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ticketscandy_do_activation_redirect');
delete_site_option('ticketscandy_do_activation_redirect');
delete_option('tickets_candy_options');
delete_site_option('tickets_candy_options');

