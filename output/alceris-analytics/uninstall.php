<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alceris_site_id');
delete_site_option('alceris_site_id');
delete_option('alceris_track_admin');
delete_site_option('alceris_track_admin');

