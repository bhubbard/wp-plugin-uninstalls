<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('just_in_case_gallery_fb_include_base');
delete_site_option('just_in_case_gallery_fb_include_base');
delete_option('just_in_case_gallery_fb_on');
delete_site_option('just_in_case_gallery_fb_on');
delete_option('array_key');
delete_site_option('array_key');

