<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admiral_proxy_xff');
delete_site_option('admiral_proxy_xff');
delete_option('Activated_Admiral');
delete_site_option('Activated_Admiral');

