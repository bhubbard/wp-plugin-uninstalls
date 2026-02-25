<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('anh_notices');
delete_site_option('anh_notices');
delete_option('lswredirect_do_activation_redirect');
delete_site_option('lswredirect_do_activation_redirect');

