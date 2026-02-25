<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('__acme_demo_setup_do_redirect');
delete_site_option('__acme_demo_setup_do_redirect');

