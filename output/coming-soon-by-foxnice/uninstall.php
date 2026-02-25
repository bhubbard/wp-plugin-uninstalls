<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('foxnice_coming_soon_status');
delete_site_option('foxnice_coming_soon_status');
delete_option('foxnice_coming_soon_text');
delete_site_option('foxnice_coming_soon_text');

