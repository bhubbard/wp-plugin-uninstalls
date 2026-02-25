<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hsabffe_hide_admin_bar');
delete_site_option('hsabffe_hide_admin_bar');

