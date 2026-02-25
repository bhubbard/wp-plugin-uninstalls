<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advanced_backwpup_s3_destinations');
delete_site_option('advanced_backwpup_s3_destinations');
delete_option('advanced_backwpup_s3_destinations_append');
delete_site_option('advanced_backwpup_s3_destinations_append');

