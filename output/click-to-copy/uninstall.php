<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpctcUtils');
delete_site_option('bpctcUtils');
delete_option('fs_lite_accounts');
delete_site_option('fs_lite_accounts');

