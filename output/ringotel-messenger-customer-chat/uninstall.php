<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('page_id');
delete_site_option('page_id');
delete_option('locale');
delete_site_option('locale');

