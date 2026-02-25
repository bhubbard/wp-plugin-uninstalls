<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('klasslklms_institute_display_id');
delete_site_option('klasslklms_institute_display_id');
delete_option('klasslklms_institute_display_lms_url');
delete_site_option('klasslklms_institute_display_lms_url');

