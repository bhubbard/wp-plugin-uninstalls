<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_toolbar_values');
delete_site_option('social_toolbar_values');
delete_option('social_toolbar_code');
delete_site_option('social_toolbar_code');

