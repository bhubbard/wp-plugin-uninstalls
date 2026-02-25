<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myplugin_activation_date');
delete_site_option('myplugin_activation_date');
delete_option('winwar_no_bug');
delete_site_option('winwar_no_bug');

