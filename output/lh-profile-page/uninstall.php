<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lh_profile_page_page_id');
delete_site_option('lh_profile_page_page_id');
delete_option('lh_profile_page-options');
delete_site_option('lh_profile_page-options');

