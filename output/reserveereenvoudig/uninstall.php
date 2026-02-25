<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reserveereenvoudig_bedrijfs_guid');
delete_site_option('reserveereenvoudig_bedrijfs_guid');

