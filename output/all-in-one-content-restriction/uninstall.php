<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('all_in_one_content_restriction_settings');
delete_site_option('all_in_one_content_restriction_settings');

