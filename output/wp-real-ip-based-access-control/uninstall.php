<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acl_ctrl_mode');
delete_site_option('acl_ctrl_mode');
delete_option('acl_ctrl_addr');
delete_site_option('acl_ctrl_addr');

