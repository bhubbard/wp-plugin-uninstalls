<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('envelope_challenge_db_version');
delete_site_option('envelope_challenge_db_version');

