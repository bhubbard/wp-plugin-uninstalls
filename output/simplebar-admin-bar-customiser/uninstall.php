<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbabc_options');
delete_site_option('sbabc_options');
delete_option('sbabc_roles');
delete_site_option('sbabc_roles');

