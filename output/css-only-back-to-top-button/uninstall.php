<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('color');
delete_site_option('color');
delete_option('viewoption');
delete_site_option('viewoption');

