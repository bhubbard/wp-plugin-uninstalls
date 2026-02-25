<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sm_display_avatars');
delete_site_option('sm_display_avatars');
delete_option('sm_user_delete');
delete_site_option('sm_user_delete');
delete_option('sm_user_edit');
delete_site_option('sm_user_edit');
delete_option('sm_enable_report');
delete_site_option('sm_enable_report');

