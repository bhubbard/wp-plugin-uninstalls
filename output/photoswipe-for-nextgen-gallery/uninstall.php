<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nggphotoswipe_enabled');
delete_site_option('nggphotoswipe_enabled');
delete_option('additional_viewers');
delete_site_option('additional_viewers');

