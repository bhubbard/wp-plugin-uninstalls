<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('igenchat_id');
delete_site_option('igenchat_id');
delete_option('igenchat_verified');
delete_site_option('igenchat_verified');

