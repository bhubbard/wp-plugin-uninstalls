<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('announcementInstalled');
delete_site_option('announcementInstalled');
delete_option('contentFrontendAnnouncement');
delete_site_option('contentFrontendAnnouncement');

