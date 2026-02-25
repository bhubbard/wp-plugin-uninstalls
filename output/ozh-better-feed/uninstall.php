<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ozh_betterfeed');
delete_site_option('ozh_betterfeed');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');

