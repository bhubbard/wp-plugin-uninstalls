<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdfrack_do_activation_redirect');
delete_site_option('pdfrack_do_activation_redirect');

