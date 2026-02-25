<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('divvyhq_do_activation_redirect');
delete_site_option('divvyhq_do_activation_redirect');

