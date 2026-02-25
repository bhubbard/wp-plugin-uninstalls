<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbto_username');
delete_site_option('wbto_username');
delete_option('wbto_password');
delete_site_option('wbto_password');

