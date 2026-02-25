<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('the_paste_enable_profile');
delete_site_option('the_paste_enable_profile');
delete_option('the_paste_version');
delete_site_option('the_paste_version');

