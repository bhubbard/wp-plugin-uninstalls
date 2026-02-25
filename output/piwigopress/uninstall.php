<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PiwigoPress_previous_url');
delete_site_option('PiwigoPress_previous_url');
delete_option('PiwigoPress_previous_options');
delete_site_option('PiwigoPress_previous_options');

