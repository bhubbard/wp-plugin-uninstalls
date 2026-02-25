<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('showguestcounts');
delete_site_option('showguestcounts');
delete_option('showguestmyname');
delete_site_option('showguestmyname');
delete_option('Showguests_guests_info');
delete_site_option('Showguests_guests_info');

