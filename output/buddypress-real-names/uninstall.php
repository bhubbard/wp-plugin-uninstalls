<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bprn_options');
delete_site_option('bprn_options');
delete_option('bprn_display_name_options');
delete_site_option('bprn_display_name_options');
delete_option('bprn_members_options');
delete_site_option('bprn_members_options');
delete_option('bprn_search_options');
delete_site_option('bprn_search_options');

