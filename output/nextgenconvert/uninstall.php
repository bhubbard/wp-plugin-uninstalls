<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nextgenconvert_api_key');
delete_site_option('nextgenconvert_api_key');
delete_option('nextgenconvert_quality');
delete_site_option('nextgenconvert_quality');

