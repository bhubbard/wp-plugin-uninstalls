<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_members_entries');
delete_site_option('widget_members_entries');
delete_option('widget_club_news');
delete_site_option('widget_club_news');

