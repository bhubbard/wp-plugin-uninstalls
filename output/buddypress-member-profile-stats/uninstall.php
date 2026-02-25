<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_member_profile_stats_displaycounts');
delete_site_option('bp_member_profile_stats_displaycounts');
delete_option('bp_member_profile_stats_display_sidebarme');
delete_site_option('bp_member_profile_stats_display_sidebarme');

