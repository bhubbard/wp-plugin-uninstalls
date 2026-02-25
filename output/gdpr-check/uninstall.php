<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gdprcompatible_status');
delete_site_option('gdprcompatible_status');
delete_option('gdprcompatible_do_activation_redirect');
delete_site_option('gdprcompatible_do_activation_redirect');

