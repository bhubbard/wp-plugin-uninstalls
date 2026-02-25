<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siteid');
delete_site_option('siteid');
delete_option('vsw_pos');
delete_site_option('vsw_pos');

