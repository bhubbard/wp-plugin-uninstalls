<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('doctorsoft_time_limit');
delete_site_option('doctorsoft_time_limit');
delete_option('doctorsoft_comment_limit');
delete_site_option('doctorsoft_comment_limit');

