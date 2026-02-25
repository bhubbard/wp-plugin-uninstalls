<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ohmywishes_constructor');
delete_site_option('ohmywishes_constructor');
delete_option('ohmywishes');
delete_site_option('ohmywishes');

