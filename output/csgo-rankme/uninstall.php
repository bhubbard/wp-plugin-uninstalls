<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rankme_scoreboard_db_version');
delete_site_option('rankme_scoreboard_db_version');
delete_option('rankme_profile_db_version');
delete_site_option('rankme_profile_db_version');

