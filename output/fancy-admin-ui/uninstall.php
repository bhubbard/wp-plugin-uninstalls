<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fau_primary_color');
delete_site_option('fau_primary_color');
delete_option('fau_secondary_color');
delete_site_option('fau_secondary_color');

