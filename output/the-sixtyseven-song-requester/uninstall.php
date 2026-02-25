<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss_song_requester_settings');
delete_site_option('ss_song_requester_settings');

// Delete Transients
delete_transient('ss_song_requester_admin_notices');
delete_site_transient('ss_song_requester_admin_notices');

