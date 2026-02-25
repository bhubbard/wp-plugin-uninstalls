<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tiviclick_accountid');
delete_site_option('tiviclick_accountid');
delete_option('tiviclick_uselang');
delete_site_option('tiviclick_uselang');

