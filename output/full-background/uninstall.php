<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alobaidi_full_background_random');
delete_site_option('alobaidi_full_background_random');
delete_option('alobaidi_full_background_link');
delete_site_option('alobaidi_full_background_link');

