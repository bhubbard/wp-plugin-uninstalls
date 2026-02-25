<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speakol_argbox_status');
delete_site_option('speakol_argbox_status');
delete_option('speakol_app_id');
delete_site_option('speakol_app_id');
delete_option('speakol_box_width');
delete_site_option('speakol_box_width');
delete_option('speakol_displays_in');
delete_site_option('speakol_displays_in');
delete_option('speakol_lang');
delete_site_option('speakol_lang');
delete_option('speakol_title');
delete_site_option('speakol_title');
delete_option('speakol_no_title');
delete_site_option('speakol_no_title');

