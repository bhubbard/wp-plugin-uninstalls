<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pc_user_control_list');
delete_site_option('pc_user_control_list');
delete_option('pc_auto_activate_list');
delete_site_option('pc_auto_activate_list');

