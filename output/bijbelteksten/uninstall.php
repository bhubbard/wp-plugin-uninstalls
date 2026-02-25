<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bverse_bible_ref_services');
delete_site_option('bverse_bible_ref_services');
delete_option('bverse_bible_version');
delete_site_option('bverse_bible_version');
delete_option('bverse_open_new_window');
delete_site_option('bverse_open_new_window');
delete_option('bverse_popover');
delete_site_option('bverse_popover');
delete_option('bverse_bibles_max_depth');
delete_site_option('bverse_bibles_max_depth');
delete_option('bverse_credits');
delete_site_option('bverse_credits');
delete_option('bverse_biblia_social');
delete_site_option('bverse_biblia_social');

