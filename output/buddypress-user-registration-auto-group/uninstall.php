<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_group_name');
delete_site_option('auto_group_name');
delete_option('auto_group_slug');
delete_site_option('auto_group_slug');
delete_option('auto_group_desc');
delete_site_option('auto_group_desc');
delete_option('auto_group_status');
delete_site_option('auto_group_status');

