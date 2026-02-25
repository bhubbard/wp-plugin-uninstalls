<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fontface-load-css-in-tinymce');
delete_site_option('fontface-load-css-in-tinymce');
delete_option('fontface-load-css-style-in-tinymce');
delete_site_option('fontface-load-css-style-in-tinymce');
delete_option('fontface-load-in-admin');
delete_site_option('fontface-load-in-admin');
delete_option('fontface-generate-css-class');
delete_site_option('fontface-generate-css-class');
delete_option('fontface_font_list_count');
delete_site_option('fontface_font_list_count');
delete_option('fontface-css');
delete_site_option('fontface-css');
delete_option('fontface_font_list');
delete_site_option('fontface_font_list');

