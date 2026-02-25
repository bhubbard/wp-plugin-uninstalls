<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dfx_randomuserid_activation_show_activation_notice');
delete_site_option('dfx_randomuserid_activation_show_activation_notice');
delete_option('dfx_randomuserid_first_user_moved_to');
delete_site_option('dfx_randomuserid_first_user_moved_to');

