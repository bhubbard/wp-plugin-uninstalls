<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advmceconf_options');
delete_site_option('advmceconf_options');
delete_option('advmceconf_version');
delete_site_option('advmceconf_version');

